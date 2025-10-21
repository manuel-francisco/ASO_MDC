#!/bin/bash

if [ "$#" -ne 2 ] #En este if, comprobamos que se introdujeron exactamente 2 argumentos, y si no son 2, mostrará un error
then
	echo "Uso: ./05_args_check.sh <num1> <num2>"
	exit 1
fi

if ! [[ "$1" =~ ^-?[0-9]+$ ]] || ! [[ "$2" =~ ^-?[0-9]+$ ]] #En este if, comprobamos que los dos argumentos son números enteros, si no lo son, nos muestra un error
then
	echo "Error: Ambos argumentos dben ser número enteros"
	exit 2
fi

suma=$(( $1 + $2)) #Guardamos en una variable llamada suma, el resultado de los dos argumentos introducidos por el usuario

echo "El resultado es: $suma" #Mostramos el resultado por pantalla
