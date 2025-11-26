#!/bin/bash

#Definición de las variables y funciones

NOMBRE=$(whoami)
CURSO="2º ASIR"
FECHA=$(date)
DIRECTORIO_ACTUAL=$(pwd)

#Mostrar por pantalla las variables

echo "Soy $NOMBRE de $CURSO ."
echo "Hoy es $FECHA ."
echo "Estoy trabajando en el directorio $DIRECTORIO_ACTUAL ."
