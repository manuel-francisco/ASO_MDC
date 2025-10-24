#!/bin/bash


if [[ $# -ne 2 ]]; then
echo "Uso: ./05_args_check.sh <num1> <num2>"
exit 1
elif ! [[ "$1" =~ ^[0-9]+$  ]] || [[ "$2" =~ ^[0-9]+$ ]]; then
echo "Error: debe introducir numeros"
exit 2
else
SUMA=$(( $1 + $2 ))
echo "La suma de ambos argumentos es $SUMA"
fi
