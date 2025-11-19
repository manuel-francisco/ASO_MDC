#!/bin/bash

read -p "Introduzca un número natural: " n

#Este es el contador
CUENTA=0

while [[ $CUENTA -le $n ]]; do
	echo "$CUENTA"
	#el contador se inicia
	CUENTA=$(($CUENTA+1)) #Va añadiendo números cada segundo
	sleep 1 #hay una pausa de 1 segundo por cada número que cuenta
done

echo "Contador finalizado. Se han mostrado $n números."
