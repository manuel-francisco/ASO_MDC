#!/bin/bash

read -p "Introduce un número > " contar

#Mientras COUNT no sea igual a la variable contar va a seguir el bucle.
while [[ COUNT -ne contar ]]; do

COUNT=$((COUNT+1)) #Cada vez que se hace un bucle añade +1 al valor COUNT.
echo "$COUNT"
sleep 1 #Detien el script un 1seg
done

#Una vez finalize el bucle pone este echo al final
echo "Contador finalizado. Se han mostrado $COUNT números"
