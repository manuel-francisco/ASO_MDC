#!/bin/bash

while true; do
echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Mostrar directorio de trabajo"
echo "4) salir"

read -p "Elige > " elec

case $elec in
	1)
	#fecha actual del sistema
	date
;;
	2)
	#Usuario actual
	whoami
;;
	3)
	#Muestra el directorio de trabajo
	pwd
;;
	4)
	#Termina el script
	break
;;
	*)
	#Se  queja de ti y termina el script
;;
esac
done
