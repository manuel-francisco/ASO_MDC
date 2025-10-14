#!/bin/bash

#Esta linea es un echo que muestra el nombre del script en pantalla, gracias al $0
echo "El script se llama $0"

#Esta linea es un echo que muestra el primer valor que introducimos al la hora de ejecutar el script
echo "Primer número: $1"

#Esta linea es un echo que muestra el segundo valor que introducimos al la hora de ejecutar el script
echo "Segundo número: $2"

#Es una operación matemática que realiza una suma con el valor $1 y $2
opera=$(($1+$2))

#Es un echo que muestra el resultado de la suma de la operación entre los valores introducidos al principio (el $1 y el $2)
echo "Resultado: $opera"
