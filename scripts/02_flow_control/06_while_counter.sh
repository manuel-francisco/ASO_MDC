#!/bin/bash

# Primero declaramos la variable count, que empezara en 1

COUNT=1

# Le pedimos al usuario que escriba un numero entero

read -p "Escribe un numero entero: " NUM

# Nos aseguramos de que se introduzca un numero entero

if [[ ! "$NUM" =~ ^[0-9]+$ ]]; then
    echo "Error: Debes introducir un número entero positivo."
    exit 1
fi

# Mediante un while indicamos que cuente hasta que se llegue al numero que ha indicado el usuario

while [[ $COUNT -le $NUM ]]
do
echo "$COUNT"
sleep 1
COUNT=$((COUNT+1))
done
echo "Contador finalizado. Se han mostrado $NUM numeros"
