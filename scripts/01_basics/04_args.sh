#!/bin/bash

# comprueba si tiene el número de argumentos correcto
if [[ $# -ne 2 ]]; then
	echo "Error: solo se admiten dos argumentos de línea."
# comprueba si los argumentos son números
elif ! [[ $1 =~ ^[0-9]+$ && $2 =~ ^[0-9]+$ ]]; then
	echo "Error: solo se admiten valores numéricos."
else
# muestra en pantalla el nombre del script, los valores de los argumentos y su suma
	echo "Nombre del script -> $0"
	echo "Primer valor -> $1"
	echo "Segundo valor -> $2"
	echo "Suma -> $(($1+$2))"
fi
