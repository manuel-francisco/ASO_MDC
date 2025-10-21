#!/bin/bash

read -p "Introduzca un número: " num #Le pedimos al usuario que nos introduzca cualquier número entero

contador=1 #Creamos una variable con el valor de 1 para el contador comience en 1

while [ $contador -le $num ] #Creamos este while que ejecutará un contador que comienza en uno e irá sumando de uno en uno hasta que llegemos al número que introdujo el usuario
do
	echo $contador
	sleep 1
	((contador++))
done

echo "Contador finalizado. Se han mostrado $num números"
