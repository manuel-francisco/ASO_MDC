#!/bin/bash


read -p "Introduce un numero entero: " N
COUNT=1

while [[ $COUNT -le $N ]]; do

echo $COUNT
COUNT=$((COUNT+1))

sleep 1

done

echo "Contador finalizado. Se han mostrado $N números"
