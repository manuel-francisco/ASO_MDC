#!/bin/bash

#Los &>/dev/null es para que no aparezca nada por pantalla al ejecutar el script.

#Rutas de archivo log y .csv
rutalog="/var/log/gestion_usuarios.log"
csv="/home/hugo/Escritorio/05_automation/usuarios.csv"

#Esta función crea un usuario y lo asigna un grupo principal
anadir() {
useradd -m -d "/home/$1" -g "$2" "$1" &>/dev/null
}

#Esta función bloquea un usuario con passwd -l y mueve el home del usuario a .eliminados
#Luego se crea el directorio .eliminados, si ya existe .elimanados no ocurre nada.
bloquear() {
passwd -l "$1" &>/dev/null
eliminados="/home/.eliminados/"
mkdir -p $eliminados
mv "/home/$1" "/home/.eliminados/$1" &>/dev/null
}

#Mientras lea lineas del archivo csv el bucle va a seguir, IFS indica que read divide cada campo con [,].  
while IFS="," read -r usu grupo senal contra ; do
#Si la señal es add ejecuta lo de dentro
if [[ "$senal" == "add" ]]; then
	#Si no existe el grupo en /etc/group lo crea, [^] significa que esta al inicio de la linea.
	if ! grep -q "^$grupo" /etc/group; then
	groupadd "$grupo" &>/dev/null
	fi
	#Si el usuario no existe crea el usuario y le da contraseña, además manda un texto al log.
	if ! grep -q "^$usu" /etc/passwd; then
	#La funcion anadir necesita las variables $usu y $grupo para poder crear el usuario
	anadir $usu $grupo
	#Le cambia la contraseña al usuario, tenga o no una.
	echo "$usu:$contra" | chpasswd &>/dev/null
	echo "[$(date)] - USUARIO NUEVO - usuario $usu creado" >> $rutalog  
	else
	#Si existe manda este texto al log
	echo "[$(date)] - ERROR - usuario $usu ya existe" >> $rutalog
	fi		
#Si la señal es rm ejecuta lo de dentro.
elif [[ "$senal" == "rm" ]];then
	#Si el usuario existe lo bloquea y manda un texto al log.
	if grep -q "^$usu" /etc/passwd ; then
	#La funcion bloquear necesita $usu para que funcione
	bloquear $usu
	echo "[$(date)] - BLOQUEADO - usuario $usu" >> $rutalog
	else
	#Si no existe manda este otro texto al log.
	echo "[$(date)]- ERROR - usuario $usu no existe" >> $rutalog  		
	fi
fi
#Es el archivo que se va a leer.
done < $csv
