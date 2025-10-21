#!/bin/bash
read -p "introduce un número entero " n1
if [[ "$n1" -gt "10" ]]
then
echo "$n1 es mayor que 10"
else
echo "$n1 no es mayor que 10"
fi


