#!/bin/bash

NOMBRE=$(whoami)
#imprime cual es el usuario
CURSO="Segundo de ASIR"
FECHA=$(date)
#imprime cual es la fecha actual
DIRECTORIO=$(pwd)
#imprime cual es el directorio actual

echo "Soy $NOMBRE de $CURSO"
echo "Hoy es $FECHA"
echo "Estoy trabajando en $DIRECTORIO"
