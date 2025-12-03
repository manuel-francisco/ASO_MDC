#!/bin/bash

function es_par {

	if [[ $(( $1 % 2 )) -eq 0 ]]; then
		return 0
	else
		return 1
	fi
}

	read -p "Introduce un número: " NUM

	es_par $NUM

	if [[ $? -eq 0 ]];then

		echo "$NUM es par"
	else
		echo "$NUM es impar"
	fi
