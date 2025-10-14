#!/bin/bash

NOMBRE="Ignacio" #  Tambien puedo usar $(whoami) para devolver el usuario de la sesion
CURSO="Segundo de ASIR"
FECHA=$(date) # Ejecuta el comando date y lo almacena en la variable FECHA

echo "Soy $NOMBRE de $CURSO."
echo "Hoy es $FECHA."
echo "Estoy trabajando en el directorio $(pwd)."
