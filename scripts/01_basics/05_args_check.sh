#!/bin/bash

#Este if dice si los argumentos son = a 2, ejecuta el siguiente if que verifica si los valores 1 y 2 sean numéricos.
#En caso de que no sean 2 argumentos da el codigo de error 1, si es el 2do if el que ha fallado da el codigo de error 2.
if [[ $# -eq 2 ]]
then
	if [[ $1 =~ ^[0-9]+$  &&  $2 =~ ^[0-9]+$ ]]
	then
	calc=$(( $1 + $2 ))
	echo "El calculo de $1 + $2 es $calc"
	else
	echo "ERROR: No son valores numéricos" 
	exit 2
	fi
else
echo "Uso: ./05_args_check.sh <num1> <num2>"
exit 1
fi


