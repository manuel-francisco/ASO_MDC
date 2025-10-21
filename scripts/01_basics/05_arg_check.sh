#!/bin/bash

if [[ $# -ne 2 ]]; then
echo "Uso: $0 <num1> <num2>"
exit 1

elif [[ ! "$1" =~ ^[0-9]+$ ]] || [[ ! "$2" =~ ^[0-9]+$ ]]; then
echo "Error, ambos valores deben ser numéricos"
exit 2
fi
SUMA=$(( $1 + $2 ))
echo "El resultado de la suma es $SUMA"
