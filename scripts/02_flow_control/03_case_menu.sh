#!/bin/bash 

echo "1) Mostrar fecha actual "
echo "2) Mostrar usuario actual "
echo "3) Salir "

read -p "Introduce una opción: " op

case $op in #El case es una de las mejores opciones a la hora de hacer un menu
	1)
		date 
;; #El punto y comilla indica el final de esta opción 
	2)
		echo "$USER"
;;
	3)
		exit 1
;;
esac
