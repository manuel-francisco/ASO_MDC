#!/bin/bash 

echo "El script se llama $0"
echo "Primer número: $1"
echo "Segundo número: $2"
RESULTADO=$(($1+$2))
echo "Resultado: $RESULTADO"
