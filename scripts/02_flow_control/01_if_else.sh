#!/bin/bash

# Pide un número al usuario
read -p "Introduce un número entero: " NUMERO

# Comprueba si el número es más grande que 10
if [[ $NUMERO -gt 10 ]];then
	echo "$NUMERO es más grande que 10"
else
# Si el número no es más grande que 10 devuelve este mensaje
	echo "$NUMERO no es más grande que 10"
fi
