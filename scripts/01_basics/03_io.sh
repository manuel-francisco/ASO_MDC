#!/bin/bash

# Uso de read para obtener las variables.
echo "Introduzca su nombre: "
	read NOMBRE
echo "Introduzca su edad: "
	read EDAD

# Confirmación de que la edad introducida es válida.

entero='^[+-]?[0-9]+$'

if ! [[ "$EDAD" =~ $entero ]]; then
		echo "Esa edad no es válida."
		exit 
	else
		echo "La edad es válida"
fi 

# Calculo para saber cuantos años le quedan para cumplir 100.
Queda=$((100 - $EDAD))

echo "Hola $NOMBRE, le quedan $Queda años para tener 100 años"
