#!/bin/bash


# Primero pregunto por un nombre y una edad y l aguardo en una variable
read -p  "Escribe tu nombre: " NOMBRE
read -p  "Escribe tu edad: " EDAD

# Ahora usando el condicional IF me aseguro de que la edad va a ser un numero
# A traves de una operacion voy a calcular cuantos años faltan para llegar a 100
if [[ -z $EDAD ]]
then
echo "No hay nada escrito en edad" 
elif [[ ! $EDAD =~ ^[0-9]+$ ]]
then
echo "La edad no es un numero"
else
operacion=$((100-$EDAD))
echo "Hola $NOMBRE, te faltan $operacion años para cumplir 100"
fi
