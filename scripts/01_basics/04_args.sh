#!/bin/bash

#Imprimimos por pantalla el nombre del script usando la variable posicional $0
echo "El script se llama $0"

#Imprimimos por pantalla el primer argumento usando la variable posicional $1
echo "Primer numero: $1"

#Imprimimos por pantalla el segundo argumento usando la variable posicional $2
echo "Segundo numero: $2"

#Creamos una variable que realizara la suma de los argumentos 1 y 2 ($1 y $2)
operacion=$(($1+$2))

#Imprimimos por pantalla el resultado de sumar ambos argumentos
echo "Resultado $operacion"
