#!/bin/bash


OPCION=""
	echo "1) Mostrar la fecha actual"
        echo "2) Mostrar el usuario actual"
        echo "3) Salir"

	read -p "Selecciona una opción: " OPCION
	case $OPCION in
	1)
	echo "$(date)."
	;;

	2)
	echo "$(whoami)"
	;;

	3)
	echo "Adiós"
	;;

	*)
	echo "Opción no válida"
	;;

esac
