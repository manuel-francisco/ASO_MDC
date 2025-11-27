#!/bin/bash

echo "1) Mostrar fecha actual "
echo "2) Mostrar usuario actual "
echo "1) Salir "

read -p "Introduce una opción: " op

#El case te permite elegir entre varias opciones
case $op in
	1)
		date
;;
	2)
		echo "$USER"
;;
	3)
		exit 0
;;
esac
