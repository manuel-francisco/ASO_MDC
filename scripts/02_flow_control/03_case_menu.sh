#!/bin/bash

#Muestra el menu

echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Salir"

#Recoge la opcion introducida para aplicarla luego en el case

read -p "introduce una opcion > " OPCION

case $OPCION in
	1)
		echo "Fecha actual: $(date)"
		exit 0
		;;
	2)
		echo "Usuario actual: $(whoami)"
		exit 0
		;;
	3)
		echo "Saliendo..."
		exit 0
		;;
	*)
		echo "Opcion no valida"
		;;
esac
