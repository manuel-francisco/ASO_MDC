#!/bin/bash

# comprueba si tiene el número de argumentos correcto
if [[ $# -ne 2 ]]; then
	echo "Uso: $0 numero1 numero2"
	exit 1

# comprueba si los argumentos son números
elif ! [[ $1 =~ ^-?[0-9]+$ && $2 =~ ^-?[0-9]+$ ]]; then
	echo "Error: solo se admiten valores numéricos."
	exit 2
else
# muestra en pantalla la suma de los argumentos
	echo "Suma -> $(($1+$2))"
fi
