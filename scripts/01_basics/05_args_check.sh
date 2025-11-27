#!/bin/bash

if [[ $# -ne 2 ]]; then
echo "Uso: $0 <num1> <num2>"
exit 1

elif [[ "$valor" =~ ^[0-9]+$ ]] || [[ "$valor" =~ ^[0-9]+$ ]]; then
echo "Error, ambos valores deben ser numéricos"
exit 2
fi
suma=$(( $1 + $2 ))
echo "El resultado es $suma"
