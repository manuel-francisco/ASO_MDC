#!/bin/bash


OPCION=""
# muestra las opciones
	echo "1) Mostrar la fecha actual"
        echo "2) Mostrar el usuario actual"
        echo "3) Salir"
# pide que elijas
	read -p "Selecciona una opción: " OPCION
	case $OPCION in
	1)
#si escoge 1 muestra un mensaje con la fecha
	echo "$(date)."
	;;
#si escoge 2 muestra un mensaje con el nombre de usuario
	2)
	echo "$(whoami)"
	;;
#si escoge 3 muestra un mensaje de despedida
	3)
	echo "Adiós"
	;;
#si no se escoge ninguna de las tres muestra un mensaje de error
	*)
	echo "Opción no válida"
	;;

esac
