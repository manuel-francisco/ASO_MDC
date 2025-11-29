#!/bin/bash
while true; do

	echo "1) Mostrar fecha actual"
	echo "2) Mostrar usuario actual"
	echo "3) Mostrar directorio de trabajo"
	echo "4) Salir"
read -p "Elige una opción: " op
case $op in
	1)
		echo "$(date)"
;;
	2)
		echo "El usuario actual es $(whoami)"
;;
	3)
		echo "El directorio de trabajo es $(pwd)"
;;
	4)
		exit 0
;;
	*)
		echo "Elige una opción entre 1-4"
;;
esac
done
