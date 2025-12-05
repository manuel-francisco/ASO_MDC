#!/bin/bash
#Variable de LOG
LOG="/var/log/gestion_usuarios.log"

#Funcion de LOG
log (){
    echo "[$(date '+%d-%m-%Y %H:%M:%S')] - operación: $1 - usuario: $2" >> "$LOG"
}

#user, grp, op --> usuario, grupo y operacion
while IFS=, read user grp op; do

echo "Usuario: $user, Grupo: $grp, Operacion: $op"

if [ $op = add ]; then
	echo "añadimos usuario, pero primeros comprobamos su grupo"

#LOGS -- vamos a ir añadiendo logs por todo el script donde ocurren acciones
#no hace falta comprobar la existencia del archivo de los logs, porque se crea automaticamente al hacer el echo

#if para comprobar si existe el grupo
if ! getent group "$grp" >/dev/null; then
	echo -e "el grupo $grp, no existe \n Creando grupo..."
	groupadd "$grp"
	log "el grupo no existe pero se crea: $op" "$user"
else
	echo "El grupo $grp, existe"
	log "$el grupo existe: op" "$user"
fi

#if para comprobar si existe el usuario, -m es para crear el home y el -g para asignar el grupo
#tambien se puede buscar el usuario con passwd / grep -q "^$user" /etc/passwd

if getent passwd "$user" >/dev/null; then
	echo "El usuario $user existe"
	log "el usuario existe: $op" "$user"
else
	echo -e "El usuario $user, no existe \n Creando usuario..."
	useradd -m -g "$grp" "$user"
	log "el usuario no existe $op" "$user"
fi

#elif para bloquear el usuario y moverlo a home
elif [ $op = rm ]; then
	echo "eliminamos usuario"

#comprobamos si el usuario esta bloqueado, el -s muestra el estado de la cuenta del usuario, el -q, es para que no muestre salida 
if passwd -S "$user" | grep -q "L"; then
	echo "El usuario $user, ya esta bloqueado"
	log "el usuario ya esta bloqueado: $op" "$user"
	continue
fi

#comprobamos si el usuario existe
	if ! getent passwd "$user" >/dev/null; then
	echo "El usuario $user, no existe. Se ignora"
	log "el usuario no existe: $op" "$user"
	continue
fi

#if para crear o comprobar si existe el directorio donde van los usuarios eliminados
if  [ ! -d /home/.eliminados ]; then
	echo "Creamos el directorio /home/.eliminados"
	mkdir -p /home/.eliminados
fi

#ahora que tenemos el directorio creado procedemos a eliminar el usuario (continuacion del elif)
	echo "bloqueando el usuario, $user"
	passwd -l "$user"
	log "se bloquea el usuario $op" "$user"

#if para mover el home del usuario al de eliminados -- /home/user lo ponemos entre comillas por el caso en el que el $user sea un nombre compuesto y que no se interprete como dos argumentos
if [ -d "/home/$user" ]; then
	echo "Movemos /home/$user a /home/.eliminados"
	mv "/home/$user" /home/.eliminados/
	log "se mueve el usuario al fichero eliminados: $op" "$user"
else
	echo "El usuario, $user no tiene /home"
	log "$el usuario no tiene fichero home: op" "$user"
fi

else
	echo "operacion desconocida"
	log "operación desconocida: $op" "$user"
fi

done < /git/ASO_MDC/scripts/05_automation/usuarios.csv
