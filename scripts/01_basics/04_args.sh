#!/bin/bash


echo "El script se llama $0"
#Te muestra el directorio en el que te encuentras
echo "Primer numero: $1"
#El primer argumento a introducir
echo "Segundo numero: $2"
#El segundo argumento a introducir
SUMA=$(( $1 + $2 ))
#Suma ambos argumentos
echo "Resultado: $SUMA"
#Imprime por pantalla el resultado de la suma de los dos argumentos.
