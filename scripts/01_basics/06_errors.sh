#!/bin/bash

#read -p "escribe el numero 1
read -p "escribe el numero 1 " var
#ponemos var al final para crear  la variable

#if [ "$var == 1 ) es un número asi que usamos -eq en vez de == y de paso lo cerramos bien
if [[ "$var" -eq 1 ]];then
#echo "$NUMERO ponemos una varible que si hayamos definido
echo "prueba a no poner $var"
else
#ls ~/aso/yugoslavia aceptamos que no hay yugoslavia y miramos lo que hay en el directorio en el que estamos
ls .
fi
