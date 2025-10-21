#!/bin/bash

# Menu a mostrar en cada iteracion

MENU="1) Mostrar fecha actual\n2) Mostrar usuario actual\n3) Mostrar directorio de trabajo\n4) Salir"

# Inicializamos Opcion a 0 ya que es distinto de 4 y no es ninguna de las opciones que nos devolveria un mensaje
OPCION=0
# Creamos el bucle para mostrar el menu una y otra vez
while [[ $OPCION -ne 4 ]]
do
# Muestra el menu
	echo -e $MENU
# Lee la opción por el usuario
	read -p "Introduce una opción: " OPCION
# Ejecuta una de las opciones
	case $OPCION in
		1)
		echo -e "\nLa fecha actual es: $(date)"
		;;
		2)
		echo -e "\nEl usuario actual es: $(whoami)"
		;;
		3)
		echo -e  "\nEl directorio actual es: $(pwd)"
		;;
		4)
		echo -e "\nSaliendo del programa."
		break
		;;
		*)
		echo "\nOpción no válida"
		;;
	esac
# Separación
	echo "------------------------------"
# Mete un delay de un segundo
	sleep 1
done
