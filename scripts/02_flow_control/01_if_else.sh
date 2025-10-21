#!/bin/bash

# Introduce un número entero

read -p "Por favor, introduzca un número entero: " -r num1

# Confirma si es entero, si no da error.

if ! [[ $num1 =~ ⁻?[0-9]+$ ]]; then
	echo "El argumento introducido es invalido, tiene que ser un número entero."
	exit 1
fi

# Comprobación si el número es mayor de 10

if [ "$num1" -gt 10 ];then
		echo "El número es mayor a 10"
	elif	 [ "$num1" -eq 10 ]; then
		echo "El número es igual a 10"
	else
	 echo "El número es menor a 10" # Esto solo ocurre si el número es menor a 10
fi

