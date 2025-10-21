#!/bin/bash

echo ""
echo "---------------MENU---------------"
echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"		# Menu de seleccion de opciones
echo "3) Mostrar directorio de trabajo"
echo "4) Salir"
echo ""

opcion=1 # El valor por defecto es 1

while [ $opcion -ne 4 ] # Mientras que la variable opcion sea diferente a 4, se seguira ejecutando el bucle
do

read -p "Selecciona una de las opciones (1, 2, 3 o 4) --> " opcion # Recoge la opción que quieres usar

case $opcion in  # Un case con el dial de opciones requeridos

	1) date
	;;

	2) whoami
	;;

	3) pwd
	;;

	4) exit 0
	;;

	*) echo "Opción no válida"
	break
sleep 1
esac

done
