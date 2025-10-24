#!/bin/bash

echo "El nombre del script es $0" #$0 te enseña por pantalla el nombre del script

echo "Primer número $1" #$1 Guarda el primer argumento

echo "Segundo número $2 " #Guarda el segundo argumento


res=$(("$1" + "$2")) #es la suma de los dos argumentos

echo "El resultado de la suma es $res " #Te indica por pantalla el resultado


