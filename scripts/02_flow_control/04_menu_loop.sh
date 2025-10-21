#!/bin/bash

# Primero usamos el while para decirle que mientras el programa se ejecute correctamete siga con el bucle

while true 
do

# Mostramos las opciones con un echo

echo "--------------------------"
echo "MENU PRINCIPAL"
echo "--------------------------"

echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Mostrar directorio de trabajo"
echo "4) Salir"

echo "--------------------------"

# Pedimos que elija una opcion

read -p "Elige una opcion (1-4): " OPC

# Ahora con un case ponemos que es lo que se hara dependiendo de la opcion que se elija

case $OPC in 
	1)
	echo "La fecha actual es $(date)"
	;;
	2)
	echo "El usuario actual es $(whoami)" 
	;;
	3)
	echo "El directorio de trabajo es $(pwd)"
	;;
	4)
	echo "Adios"
	exit 0
	;;
	*)
	echo "Elige una opcion entre 1-4"
	;;


esac
sleep 1
echo "----------------------------"
done
