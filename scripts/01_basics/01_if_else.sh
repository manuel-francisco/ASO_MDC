#!/bin/bash

read -p "Introduzca un número: " num

if [ $num -gt 10 ]; then

echo "El numero $num es mayor que 10"

elif [ $num -eq 10 ]; then

echo "El níumero $num es igual que 10"

else

echo "El numero $num es menor que 10"

fi
