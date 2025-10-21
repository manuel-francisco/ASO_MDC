#!/bin/bash

if [[ -z "$1" ]]; then
    echo "Uso: ./05_args_check.sh <num1> <num2>"
	exit 1
elif [[ -z "$2" ]]; then
    echo "Uso: ./05_args_check.sh <num1> <num2>"
	exit 1
elif ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "La variable no es un número"
	exit 2
elif ! [[ "$2" =~ ^[0-9]+$ ]]; then
    echo "La variable no es un número"
	exit 2
else
	echo "El script se llama $0"
	echo "Primer número: $1"
	echo "Segundo número: $2"
	RESULTADO=$(($1+$2))
	echo "Resultado: $RESULTADO"
fi
