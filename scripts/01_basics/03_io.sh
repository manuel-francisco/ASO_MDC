#!/bin/bash

read -p "Escriba su nombre: " nombre #Le pido al usuario que escriba su nombre y lo almaceno en una variable
read -p "Escriba su edad: " edad #Le pido su edad y la almaceno en una variable

if [[ -z "$edad" ]] #Este if es para que de error si no se introduce ni una edad
then
	echo "Error"
	exit 1
fi

if ! [[ "$edad" =~ ^[0-9]+$ ]] #Este if es para que de error si se intorducen caracteres q no sean números en la edad
then
	echo "Error, la edad que has introducido no es válida"
	exit 1
fi

edadmax=$(( 100 - "$edad" )) #Operación para averiguar cuantos años le quedan para los 100

echo "Bienvenido $nombre, te quedan $edadmax años para cumplir 100" #Mensaje q indica el reultado final

