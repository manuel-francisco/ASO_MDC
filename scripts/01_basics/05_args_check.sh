#!/bin/bash

# Comprobación de que se han introducido exactamente 2 argumentos.
if [[ $# -ne 2 ]]; then
	echo "Uso: $0 <num1> <num2>"
	exit 1
# Comprobación de si al menos uno de los dos argumentos no es un número.
elif [[ ! "$1" =~ ^[0-9]+$ ]] || [[ ! "$2" =~ ^[0-9]+$  ]]; then
	echo "Al menos uno de los argumentos pasados no son del tipo numérico. Por favor, introduce dos números."
	exit 2
# Si no se cumple ninguna de las condiciones anteriores, se devuelve la suma de ambos argumentos.
else
	echo "La suma de ambos números da: $(( $1 + $2 ))"
fi
