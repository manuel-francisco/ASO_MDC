#!/bin/bash

#Declaracion de las variables
echo "El script se llama: $0"
echo "Primer número: $1"
echo "Segundo número: $2"

#suma de las variables
suma=$(( $1 +  $2 ))

echo "Resultado: $suma"
