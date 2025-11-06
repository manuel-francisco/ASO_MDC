#!/bin/bash

read -p "Introduce un número > " contar

#Si contar es un valor numerico, se realiza el bucle
if [[ "$contar" =~ ^[0-9]+$ ]]; then

#Mientras COUNT no sea igual a la variable contar va a seguir el bucle.
while [[ COUNT -ne contar ]]; do

COUNT=$((COUNT+1)) #Cada vez que se hace un bucle añade +1 al valor COUNT.
echo "$COUNT"
sleep 1 #Detien el script un 1seg
done

#Una vez finalize el bucle pone este echo al final
echo "Contador finalizado. Se han mostrado $COUNT números"
exit 0

else

#Si pones cualquier otra cosa que no sea un número te pone lo siguiente:
echo "!!Payo eso no es un número"
exit 1

fi
