#!/bin/bash

#Le pedimos al usuario su nombre y edad y las guardamos en sus variables correspondientes
read -p "Introduce tu nombre: " nombre
read -p "Introduce tu edad: " edad

#Verificamos que se introdujo algo 
if [ -z "$edad" ]; then
    echo "No has introducido nada."
    exit 1
fi

#Verificamos que el contenido introducido es un numero 
if ! [[ "$edad" =~ ^[0-9]+$ ]]; then
    echo "La edad debe ser un numero."
    exit 1
fi

#Calculamos los años restantes para llegar a los 100
anos_restantes=$((100 - edad))

#Imprimimos el resultado al usuario por pantalla
echo "Hola $nombre, te quedan $anos_restantes años para cumplir 100."
