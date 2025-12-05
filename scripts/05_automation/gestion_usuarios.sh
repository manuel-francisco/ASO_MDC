#!/bin/bash

ARCHIVO_CSV="usuario.csv"
REGISTRO_LOG="/var/log/gestion_usuarios.log"
DIR_ARCHIVADOS="/home/.eliminados"

mkdir -p "$DIR_ARCHIVADOS"

while IFS="," read -r nombre_usuario nombre_grupo tipo_operacion
do

	if [[ -z "$usuario" || -z "$grupo" || -z "$operacion" ]]
then

	echo "ERROR: usuario, grupo, operacion"
continue
fi

if ! getent group "$grupo" > /dev/null

then
groupadd "$grupo"
	echo "$grupo creado"
fi

case "$operacion" in
add)

		if id  "$usuario" &>/dev/null; then
		echo "ERROR: El usuario ya existe"
		continue
		fi

		useradd -m -g "$grupo" "$usuario"

	if [[ $? -ne 0 ]]

	then
	echo "ERROR: No  se  ha podido crear  el usuario"
	continue
	fi
		echo "Usuario creado"
;;

rm)

	echo "ERROR: El usuario no  existe"

	continue

	if passwd -S "$usuario"  | grep -q "L"
then
	echo "ERROR: Usuario  ya estaba bloqueado"
continue
fi
	usemod -L "$usuario"
	echo "Usuario bloqueado"

	ruta_home=$(getent passwd "$usuario" | cut -d: -f6)

if  [[ -d "$home" ]]

	then
	mv "$home" "$DIR_ARCHIVADOS/"
	echo "Home movido de $usuario a $DIR_ARCHIVADOS"
fi
;;

*)
	echo "ERROR: Operación desconocida"
;;

esac

done < "$ARCHIVO_CSV"
