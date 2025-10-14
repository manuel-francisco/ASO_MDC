#!/bin/bash

#Aquí he hecho read -p para pedir introducir los valores h y b
read -p "Introduce tu nombre > " h
read -p "Introduce tu edad > " b

#Aqui he hecho un IF anidado, primero poniendo que si no pones nada en el valor b te devuelve una advertencia. 
#Luego si el valor b si tiene contenido pero no es un numero, pone que no lo es.
#Si hay algo en el valor b y es  un numero devuelve el resultado del script haciendo un saludo y un calculo para ver cuantos años te quedan para tener 100 años

if [[ -n $b ]]
then
        if  [[ $b =~ ^[0-9]+$ ]];
        then 
        x=$((100 - b))
        echo -n "Hola $b, te quedan $x años para cumplir 100 años "
        else
        echo -n "$b no es un número"
        fi
else
echo " ADVERTENCIA *Introduce algo en el apartado EDAD*"
fi
