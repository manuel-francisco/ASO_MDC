#!/bin/bash

read -p "Introduzca un numero natural: " numero
COUNT=1

while [ $COUNT -le $numero ]; do
echo $COUNT

sleep 1

COUNT=$((COUNT+1))
done
echo "Contador finalizado. Se han mostrado $numero"
