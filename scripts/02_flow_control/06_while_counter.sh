#!/bin/bash

# Este script es un contador que cuenta números hasta el número que ha introducido el usuario

echo "Introduce un número natural: "
	read N

# Comprobación que N es un número natural.

if ! [[ "$N" =~ ^[0-9]+$ ]]; then
	echo "El número no es natural, intentalo de nuevo."
	exit 0
fi
	echo "------------------------------------------"
	echo "El número es natural, empezando contador.."
	echo "------------------------------------------"

# Añadimos una variable desde la que empezaremos a contar

i=0

while [[ $i -le $N ]]; do
	echo "$i"
	Contando=$(( $i + 1 ))
	i=$Contando
done

echo "------------------------------------------"
echo "-------- Has llegado al número $N ---------"
echo "------------------------------------------"
