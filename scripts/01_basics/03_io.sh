#!/bin/bash

#Les voy a pedir que me diga las variables nombre y edad
read -p "Introduce tu nombre: " nombre
read -p "Introduce tu edad: " edad

# If para ver si introduce una edad
if [[ -z "$edad" ]] then

	echo "Error, introduce una edad"
	exit 1
fi

if ! [[ "$edad" =~ ^[0-9]+$ ]] #Comando para saber si lo que a introducido edas es un número
then
	echo "Error, introduce un número"
	exit 1
fi

edad_tope=$(( 100 - "$edad" )) #Esta resta es para saber cuantos años le queda para cumplir 100

	echo "Hola $nombre, te quedan $edad_tope años para cumplir 100"
