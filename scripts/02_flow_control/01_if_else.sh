#!/bin/bash

# Pedimos al usuario un numero y definimos una variable para ese numero

read -p "Introduce un numero entero: " NUM

# Usamos el comando if para saber si el numero es mayor, igual o menor que 10
# Dependiendo de el numero que sea saldra un mensaje u otro

if [[ $NUM -gt 10 ]]
then
echo "El numero $NUM es mayor que 10"
elif [[ $NUM -eq 10 ]]
then
echo "Tu numero es 10"
else
echo "El numero $NUM es menor que 10"
fi
