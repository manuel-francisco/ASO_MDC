#!/bin/bash
# Pedir al usuario que introduzca un número entero
read -p "introduce un número entero " n1

# Comparar si el número es mayor que 10 usando -gt
if [[ "$n1" -gt 10 ]]
then
  echo "$n1 es mayor que 10"
else
  echo "$n1 no es mayor que 10"
fi
