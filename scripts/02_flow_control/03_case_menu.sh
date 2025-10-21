#!/bin/bash

echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Salir"

read -p "Introduzca una opción: " opcion #Almacenamos un resultado en una variable

case $opcion in #Dependiendo del numero de la variable que haya introducido el usuario, pasará una cosa u otra
	1) date
	;;

	2) whoami
	;;

	3) echo "Has salido del script"
	exit
	;;

	*) echo "Opción no válida"
	;;

esac
