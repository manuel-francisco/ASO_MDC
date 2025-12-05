#!/bin/bash

read -p "Escriba un número entero: " num #Pedimos un número
if [[ $num -gt 10 ]] #Definimos si el número es mayor
then
	echo "El número que has introducido es mayor que 10"
elif [[ $num -eq 10 ]] #Definimos si el número es igual
then
	echo "El número es igual a 10"
else #En caso de que no sea ni mayor ni igual (es decir, sería menos)
	echo "El nnúmero es menor que 10"
fi
