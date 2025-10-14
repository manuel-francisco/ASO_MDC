#!/bin/bash

# En el primer if me aseguro de que hay exactamente dos argumentos
if [[ $# -ne 2 ]]
then
echo "Uso: $0 <num1> <num2>"
exit 1
fi
# Aqui me aseguro de que sean numericos
if [[ ! $1 =~ ^[0-9]+$ || ! $2 =~ ^[0-9]+$ ]]
then
echo "Error de tipo de datos"
exit 2
fi
# Hago la suma de ambos numeros
suma=$(($1+$2))

echo "La suma de ambos numeros es $suma"
