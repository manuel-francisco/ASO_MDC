#!/bin/bash

# Primero mostramos las opciones al usuario

echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Salir"

# Peidmo que elija una opcion

read -p "Elige una de las opciones anteriores: " OPC

# Segun lo que elija pasaran alguna de las siguientes cosas

case $OPC in 
	1)
	echo "La fecha actual es $(date)"
	;;
	2)
	echo "El usuario actual es $(whoami)"
	;;
	3)
	echo "Adios"
	exit
	;;
	*)
	echo "Opcion no valida"
esac


