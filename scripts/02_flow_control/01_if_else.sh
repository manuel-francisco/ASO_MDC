#!/bin/bash

read -p "Introduce un número entero: " num

if [[ $num -lt 10 ]] then 
echo "El "$num" es menor que 10"
exit 0
fi 

echo "El "$num" es mayor o igual que 10"
exit 1

