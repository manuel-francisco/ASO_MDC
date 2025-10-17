#!/bin/bash

read -p "Introduzca un número entero: " numero

#Pedir al usuario que introduzca un número entero (read -p). Mostrar un mensaje indicando si el número es mayor o menor que 10. Usar una estructura condicional if … else … fi.
if [[ $numero -gt 10 ]];then

echo "Su numero es mayor que 10"


else

echo "Su numero no es mayor que 10"


fi
