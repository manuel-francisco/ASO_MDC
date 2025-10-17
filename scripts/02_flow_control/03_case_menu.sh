#!/bin/bash
#opciones
echo  "1) Mostrar fecha actual
2) Mostrar usuario actual
3) Salir"

#Introducir la opcion
read -p "Introduce una opcion: " opcion

#menu
case "$opcion" in
	1)
		echo "La fecha actual es $PWD"
		;;
	2)
		echo "El usuario acutual es $(whoami)"
		;;
	3)
		echo "Saliendo"
		exit 1
		;;
	*)
		echo "No coincide con ninguna de las opciones"
esac


