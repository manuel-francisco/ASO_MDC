#!/bin/bash

#Definiendo las variables
NOMBRE="$(whoami)"
CURSO="Segundo de ASIR"
FECHA="$(date)"


#Utilizamos  las variables con el comando echo
echo "Soy $NOMBRE de $CURSO"
echo "Hoy es $FECHA"
echo "Estoy trabajando en el directorio $(pwd)"


