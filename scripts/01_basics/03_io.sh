#!/bin/bash 

read -p "Introduce tu nombre " nombre

read -p "Introduce tu edad " edad

if [ -z $edad ];then 

echo "Introduza un número"
 
else 

if [ $edad -ne 100 ];then 

res=$(( 100 - $edad)) 

echo "Hola $nombre, te quedan $res años para cumplir 100.  "

else 

echo "Introduza un número"

fi 
fi 
