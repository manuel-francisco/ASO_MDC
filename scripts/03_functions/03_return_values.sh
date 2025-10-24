#!/bin/bash

# crea la función es_par
es_par() {
	# si el valor del primer argumento es par
	if [[ $(($1 % 2)) -eq 0 ]]; then
	    return 0	# devuelve true
	else
	    return 1	# devuelve false
	fi
}

# pregunta por un número
read -p "Escriba un número: " numero

# llama la función con $numero como argumento
es_par $numero

# si la función anterior devuleve 0 (true)
if [[ $? -eq 0 ]]; then
	echo "$numero es par"
else
	echo "$numero es impar"
fi
