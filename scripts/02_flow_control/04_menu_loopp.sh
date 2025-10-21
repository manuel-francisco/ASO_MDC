#!/bin/bash

while true #Haremos un while para que el menú se repita indefinidamente
do
	echo "1) Mostrar fecha actual"
	echo "2) Mostrar usuario actual"
	echo "3) Mostrar directorio de trabajo"
	echo "4) Salir"

	read -p "Introduzca una opción: " opcion #Pedimos que nos den una opción y la guardamos en una variable

	case $opcion in #Ponemos un case el cuál tendrá la definicón de lo que psará según que opción elija el usuario
		1) date
		;;

		2) whoami
		;;

		3) pwd
		;;

		4) exit 0
		;;

		*) echo "Opción no válida"
		;;

	esac
done
