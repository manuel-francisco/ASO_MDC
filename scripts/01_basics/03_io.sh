#!/bin/bash
#
read -p "introduce tu nombre > " NOMBRE
read -p "introduce tu edad > " EDAD

if [[ -z "$EDAD" ]]; then
	echo "No has introducido la edad"
fi

if ! [[ "$EDAD" =~ ^[0-9]+$ ]]; then
	echo "$EDAD no es un numero"
fi

echo "Hola $NOMBRE, te quedan $((100 - EDAD)) años para cumplir los 100"
