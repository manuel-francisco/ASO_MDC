#!/bin/bash
#Introducir las variables
read -p "Introduzca su nombre > " nombre
read -p "Introduzca su edad > " edad


#Elaboracion del comando
#Primera condicion
if [[ -z $edad ]];then

echo "No se ha introducido la edad"
#Segunda condicion
elif [[ ! $edad =~ ^[0-9]+$ ]]; then
echo "La edad introducida no es una cifra"

else
#Si no se cumplen las anteriores condiciones pasa esto:
numfalta=$((100-$edad))
echo "Hola $nombre, te quedan $numfalta años para cumplir 100."
fi;
