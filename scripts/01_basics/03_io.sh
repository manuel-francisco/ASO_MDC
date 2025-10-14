#!/bin/bash

read -p "Introduce tu nombre" nombre
read -p "Introduce tu edad" edad


edadfinal=$((100-$edad))

if [[ -z "$edad" ]];
then
	echo "La variable está vacía"
elif [[ $edadfinal =~ [^0-9]+$ ]];
then
	echo "La variable no es un numero"
else
	echo "Hola $nombre, te quedan $edadfinal años para cumplir 100."
fi

