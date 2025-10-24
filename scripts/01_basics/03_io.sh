#!/bin/bash

read -p "Dime tu nombre " nom #Te pide el nombre del usuario
read -p "Dime tu edad " edad  #Te pide la edad del usuario

if [[ -z "$edad" ]]; then  #Es para comprobar que la edad es correcta

echo " Error tienes que incluir una edad." #Señal de error 

elif [[ "$edad" =~ ^[0-9]+$ ]]; then #Para comprobar si es un número
res=$((100 - $edad)) #Resta de la edad

echo "Hola $nom te quedan $res para tener 100 años" #Aviso de la edad

else

echo " Error la edad no es valida " #Aviso del error 

fi


