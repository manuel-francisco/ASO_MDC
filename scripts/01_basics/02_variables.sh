#!/bin/bash

NOMBRE=$(whoami) #Definiendo la variable NOMBRE para que me de como salida el nombre de usuario
CURSO="Segundo de ASIR" #Definiendo la variable CURSO para que me de como salida el texto siguiente
FECHA=$(date) #Definiendo la variable FECHA para que me de como salida la fecha actual

echo "Soy $NOMBRE de $CURSO."
echo "Hoy es $FECHA."
echo "Estoy trabajando en el directorio $(pwd)."
