#!/bin/bash

read -p "Intrduzca un número: " numero # Recogemos el valor numérico que introduce el usuario

i=0
while [ $i -le $numero ]; do # Mientras $i sea mas bajo que $numero el bucle sigue
echo "$i"
((i++)) # Le suma +1 al valor $i cada vez que pasa por el bucle
done
