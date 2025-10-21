#!/bin/bash

#read para pedir valor num
read -p "Introduce un número entero: " num

#If de si el numero es mayor a 10
if [[ $num -gt 10 ]] then
echo "El numero $num es mayor a 10"
#Es mayor
else if [[ $num -eq 10 ]] then
echo "El nuemro $num es igual a 10"
#Es igual
else
#No es  mayor
echo "El numero $num es menor a 10"
fi
fi


