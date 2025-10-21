#!/bin/bash

read -p "Introduzca una nota: " num

if [[ $num -le 4 ]]
then
	echo "Suspenso"
elif [[ $num -eq 5 ]]
then
	echo "Aprobado"
elif [[ $num -eq 6 ]]
then
	echo "Bien"
elif [[ $num -eq 7 ]] || [[ $num -eq 8 ]]
then
	echo "Notable"
elif [[ $num -eq 9 ]] || [[ $num -eq 10 ]]
then
	echo "Sobresaliente"
else
	echo "Nota no válida"
fi
