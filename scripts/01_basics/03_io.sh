#!/bin/bash

read -p "Escriba su nombre: " nombre
read -p "Escriba su edad: " edad
#Esto sirve para mostrar el mensaje y que el usuario introduzca la variable
if [[ -z "$edad" ]]; then #El condicionante -z comprueba en if que se haya introduido un valor
echo "Debes introducir un valor"
elif [[ ! "$edad" =~ ^[0-9]+$ ]]; then #con este comando dentro de la variable if comprobamos si se ha introducido un numero
echo  "Error: la edad debe ser un numero"
else #en el caso que el numero introducido sea valido realizar la siguiente operacion y mostrar el siguiente mensaje por pantalla
RESTA=$((100-edad))
echo "Hola $nombre, te quedan $RESTA años para cumplir 100."
fi
