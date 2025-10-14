#!/bin/bash

read -p "Introduce tu nombre > " NOMBRE # Guarda el nombre de usuario en la variable NOMBRE
read -p "Introduce tu edad > " EDAD #Guarda la edad del usuario en la variable EDAD

echo "Hola $NOMBRE"
if [[ -z $EDAD ]];then # Comprueba si la variable está vacía (string vacío)
	echo "El campo de edad debe estar relleno"
else
	if [[ $EDAD =~ ^[0-9]+$ ]];then  # Comprueba si la edad es un número
		X=$(( 100 - $EDAD ))
		echo "Hola $NOMBRE, te quedan  $X años para cumplir 100"
	else
		echo "Por favor, introduce un número en el campo de 'edad'"
	fi
fi



