#!/bin/bash

# Crea la función es par
es_par() {
	# Comprueba si la expresión $1 % 2 devuelve 0
	if [[ $(( $1 % 2 )) -eq 0 ]];then
		# Return es el valor de salida que devuelve la función, en este caso, devuelve 0 para el valor par y 1 para el impar
	      	return 0
	else
		return 1
	fi	
}


# Lee un número del usuario
read -p "Introduce un número : " NUM

# Llama a la función es_par
es_par  $NUM


# $? almacena el último código de salida ejecutado, aprovechamos sus valores para usar un if y enviar un mensaje segun el codigo de salida.
if [[ $? -eq 0 ]];then
	echo "$NUM es par"
else
	echo "$NUM es impar"
fi
