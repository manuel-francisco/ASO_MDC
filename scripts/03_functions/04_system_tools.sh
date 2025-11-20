#!/bin/bash


mostrar_fecha () {
echo "Estamos a $(date)"
}

mostrar_usuario () {
echo "El usuario es $(whoami)"
}


mostrar_espacio () {
echo "$(df -h /)"
}

menu () {
	echo "1) Mostrar fecha fecha actual"
	echo "2) Mostrar usuario actual"
	echo "3) Mostrar espacio en disco"
	echo "4) Salir"

read -p "Por favor elija una opcion: " opcion
while  [[ $opcion -ne 4 ]]; do

case $opcion in
	1)
	mostrar_fecha
	;;
	2)
	mostrar_usuario
	;;
	3)
	mostrar_espacio
	;;
	4)
	echo "Saliendo del programa"
	exit 1
	;;
	*)
	echo "Opcion no valida"
	;;
esac
sleep 1
read -p "Por favor elija una opcion: " opcion
done
}

menu
