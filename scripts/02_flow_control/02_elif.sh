#!/bin/bash

read -p "Introduce una nota del 1 al 10: " not #Se indica para pedir la nota

if [[ $not -lt 5 ]] then #Indica que si el número es menor que 5 esta suspenso
echo "Suspenso"
elif [[ $not -eq 5 ]] then
echo "Aprobado"
elif [[ $not -eq 6 ]] then
echo "Bien"
elif [[ $not -lt 9 ]] then
echo "Notable"
elif [[ $not -gt 10 ]] then #Si el número es mayor que diez salta un error
echo "Introduce un número del 1 al 10"
elif [[ $not -ge 9 ]] then
echo "Sobresaliente"
fi
