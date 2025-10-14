#!/bin/bash

#Comprobamos que se han introducido exactamente 2 argumentos
if [[ ! $# -eq 2 ]]; then
    echo "Uso: ./05_args_check.sh <num1> <num2>"
    exit 1
fi

#Comprobamos que ambos argumentos son numéricos
if [[ ! "$1" =~ ^[0-9]+$ ]] || ! [[ "$2" =~ ^[0-9]+$ ]]; then
    echo "Ambos argumentos deben ser números."
    exit 2
fi

#Si son numeros, entonces los sumamos
suma=$(($1 + $2))

#Mostramos el resultado
echo "Resultado: $suma"
