#!/bin/bash

# Muestra el menu
echo -e "1) Mostrar fecha actual\n2) Mostrar usuario actual\n3) Salir"

# Toma valor del usuario
read -p "Por favor, introduce una opción: " OPCION

#  Definimos lso distintos valore que puede tomar OPCION
case $OPCION in
	1)
	# Devueve la fecha
	 echo "La fecha actual es: $(date)"
	;;
	2)
	# Muestra al usuario actual
	echo "El usuario actual es: $(whoami)"
	;;
	3)
	#  sale del programa
	echo "Saliendo del programa"
	exit 0
	;;

	# Recoge cualquier otra opción
	*)
	echo "Opción no válida"
	exit 1
esac
