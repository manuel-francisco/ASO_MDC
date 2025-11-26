#!/bin/bash

echo "El script se llama: $0"
echo "Primer número: $1"
echo "Segundo número: $2"

#La suma de las variables
suma=$(( $1 + $2 ))
#El resultado de la suma
echo "Resultado: $suma"

