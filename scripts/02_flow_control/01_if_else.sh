#!/bin/bash

# Le pedimos al usuario un numero y posteriormente lo almacenamos en la variable numero

read -p "Introduzca un numero: " numero


# Bucle if que comprueba si el numero es mayor que 10, si es menor o si es igual

if [[ $numero -gt 10 ]]; then # Mayor que 10
	echo "$numero es mayor que 10"
elif [[ $numero -lt 10 ]]; then # Menor que 10
	echo "$numero es menor que 10"
else					# Igual a 10
	echo "$numero es igual que 10"
fi


