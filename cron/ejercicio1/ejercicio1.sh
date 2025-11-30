#!/bin/bash

LOG="/var/log/gestion_usuarios.log"

ELIMINADOS="/home/.eliminados"

if ! [[ -d $ELIMINADOS ]];then
	mkdir -p $ELIMINADOS
fi

while IFS=',' read -r usuario grupo operacion;do
	echo "Usuario: $usuario, Grupo: $grupo, Operación: $operacion"

grep -q "^$usuario:" /etc/passwd
if [[ $? == 0 ]];then
	echo "El usuario $usuario ya existe"
	usu_existe=1
else
	echo "El usuario $usuario no existe"
	usu_existe=0
fi

grep -q "^$grupo:" /etc/group
if [[ $? == 0 ]];then
        echo "El grupo $grupo ya existe"
	gru_existe=1
else
        echo "El grupo $grupo no existe"
	gru_existe=0
fi

if [[ $operacion == "add" ]];then
	#Comprueba si el grupo existe, para crearlo o no
	if [[ $gru_existe -eq 0 ]];then
		groupadd "$grupo"
		echo "$(date) || add || $usuario || Se ha creado el grupo $grupo" >> "$LOG"
	else
		echo "$(date) || add || $usuario || El grupo $grupo ya existía" >> "$LOG"
	fi

	#Comprueba si el usuario existe, para crearlo o no
	if [[ $usu_existe -eq 0 ]]; then
        	useradd -m -d "/home/$usuario" -g "$grupo" "$usuario"
        	echo "$(date) || add || $usuario || Se ha creado usuario" >> "$LOG"
	elif [[ $usu_existe -eq 1 ]];then
		echo "$(date) || add || $usuario || El usuario ya existía" >> "$LOG"
		continue
	fi
elif [[ $operacion == "rm" ]];then
	#Si el usuario no existe lo ignora
	if [[ $usu_existe -eq 0 ]]; then
		echo "$(date) || rm || $usuario || El usuario no existe" >> "$LOG"
		continue
	else
		#Comprueba si está bloqueado
		if passwd -S "$usuario" 2>/dev/null | grep -qE ' L ';then
			echo "$(date) || rm || $usuario || El usuario estaba bloqueado" >> "$LOG"
		else
			        usermod -L "$usuario"
				mv "/home/$usuario" "$ELIMINADOS"
				echo "$(date) || rm || $usuario || Se ha movido el home ha /home/.ELIMINADOS" >> "$LOG"
		fi
	fi
fi


done < "usuarios.csv"
