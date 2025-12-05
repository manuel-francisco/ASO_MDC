#!/bin/bash

read -p "Introduce un número: " num #Le pedimos al usuario un número para almacenarlo en una variable

es_par () { #Definimos una función
	if [[ $(( $1 % 2 )) -eq 0 ]] #Aqui estamos comprobando si el número que ha introducido el usuario es par o impar
	then
		return 0 #Si es par, devuelve 0
	else
		return 1 #Si es impar devuelve 1
	fi
}

es_par "$num" #LLamamos a la función, mandandole la variable numero que el usuario a introducido anteriormente

if [[ $? -eq 0 ]] #Comprobamos si el resultado es 0 o 1
then
	echo "$num es un número par" #Si el resultado es 0 significa que el número es par y mostraría el siguiente mensaje
else
	echo "$num es un número impar" #Si el resultado es 1 significa que el número es impar y mostraría el siguiente mensaje
fi
