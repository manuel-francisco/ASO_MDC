#!/bin/bash

#Pide por pantalla que introduzca un número
read -p "Introduce un número entero: " num
#El número es menor que 10
if [[ $num -eq 10 ]] then
	echo "Los números son iguales "
#El número es mayor que 10
elif [[ $num -lt 10 ]] then
	echo "El $num es menor que 10"
#Los dos números son iguales
else
	echo "El $num es mayor que 10"
fi

