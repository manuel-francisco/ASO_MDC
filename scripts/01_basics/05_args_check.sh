#!/bin/bash

# Comprobación de que ha introducido dos argumentos

if [[ "$#" -ne 2 ]]; then
	echo "ERROR: No has puesto dos argumentos"
	echo "Usó: $0 <num1> <num2>"
	exit 1
fi

# Asigno los argumentos a variables

num1=$1
num2=$2

# Compruebo que los argumentos son numéricos

ENTERO='^-?[0-9]+$' # Comprobación si es un número entero o no.

if ! [[ "$num1" =~ $ENTERO ]]; then
    echo "ERROR: El primer argumento ('$num1') no es un número válido."
    exit 2 
fi

if ! [[ "$num2" =~ $ENTERO ]]; then
    echo "ERROR: El segundo argumento ('$num2') no es un número válido."
    exit 2
fi

SUMA=$(($num1 + $num2));
	echo "Todo está correcto. La suma es $SUMA"
