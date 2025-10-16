#!/bin/bash

#Condición si el número de valores introducidos es diferente de 2
if ! [ $# -eq 2 ]; then

	echo "Uso: ./05_args_check.sh <num1> <num2>"

	echo "exit 1"

#Condición si los valores introducos no son números
elif ! [[ "$1" =~ ^-?[0-9]+$ && "$2" =~ ^-?[0-9]+$ ]]; then

	echo "Los dos valores tiene que ser número"

	echo "exit 2"

else
#Suma de los valores introducidos (si las condiciones anteriores no se cumplen)
	suma=$(($1+$2))
	echo "La suma de ambos números es $suma"

fi
