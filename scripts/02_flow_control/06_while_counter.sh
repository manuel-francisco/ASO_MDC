#!/bin/bash

#Esta linea pide al usuario el numero entero y lo almacena en la variable N
read -p "Introduce un numero entero: " N

#Esto empieza la cuenta en 1 
COUNT=1

#Bucle while, para que se cumpla la condicion, hasta que la cuenta sea menor que el valor introducido
while [[ $COUNT -le $N ]]; do

#Muestra el contador, numero por numero
echo $COUNT
COUNT=$((COUNT+1))

#Añade una pequeña pausa durante la ejecucion del script
sleep 1

done

echo "Contador finalizado. Se han mostrado $N números"
