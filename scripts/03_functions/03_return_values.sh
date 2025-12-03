#!/bin/bash

es_par() {
	if [[ $(( $1 % 2 )) -eq 0 ]]; then
	#Sirve para devolver un código de estado del script 
		return 0
		echo "$NUM es un número PAR"
	else
		return 1
		echo "$NUM es un número IMPAR"
	fi
}

read -p "Introduce un número > " NUM

es_par $NUM

#En $? saldrá el estado de que haya resultado return en el if 
if [[ $? -ne 0 ]]; then
	echo $NUM es un número IMPAR
else
	echo $NUM es un número PAR
fi
