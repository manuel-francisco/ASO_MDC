#!/bin/bash

read -p "Introduce tu nota > " NOTA

#Verifica si el numero introducido es un valor del 0 al 10

if [[ $NOTA -lt 0  || $NOTA -gt 10 ]]; then
echo "Tiene que ser una nota del 0 al 10"
exit 1
fi

if [[ $NOTA -le 4 ]]; then 
echo  "Suspenso"
	elif [ "$NOTA" -eq 5 ]; then 
	echo "Aprobado"
	elif [ "$NOTA" -eq 6 ]; then
	echo "Bien"
	elif [ "$NOTA" -eq 7 ]; then
	echo "Notable"
	elif [ "$NOTA" -eq 8 ]; then
	echo "Notable"
	else
	echo "Sobresaliente"
fi

