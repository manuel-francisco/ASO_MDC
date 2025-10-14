#!/bin/bash

#Muestra el nombre de la script
echo "el nombre del scrpt es $0"
#Muestra los parametros introducidos
echo "Los parametros introducidos son: $1 y $2"
#variable para almacenar la suma de los dos primeros parametros
suma=$(($1+$2))

echo "La suma de los dos parametros es $suma"

