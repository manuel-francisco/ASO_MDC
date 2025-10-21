#!/bin/bash

# Mostrando el nombre del script y los dos primeros argumentos.

echo "El nombre del script es: $0"
echo "Dame un número: "
	read num1
echo "Dame otro número: "
	read num2

# Suma de los dos números:

Resultado=$(($num1 + $num2))
echo "La suma de $num1 y $num2 es $Resultado"
