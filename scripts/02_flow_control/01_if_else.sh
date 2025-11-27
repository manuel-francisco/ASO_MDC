#!/bin/bash

#Pide por pantalla que introduzca un número
read -p "Introduce un número entero: " num
#El número es menor que 10
if [[ $num -lt 10 ]] then
	echo "El $num es menor que 10"
exit 0
#El número es mayor que 10
if [[ $num -gt 10 ]] then
	echo "El $num es menor que 10"
exit 0
#Los dos números son iguales
else
	echo "Los números son iguales "
fi

