#!/bin/bash

NOMBRE="Ignacio"  # $(whoami) para usar el nombre del usuario que ejecuta
CURSO="Segundo de ASIR"
FECHA=$(date) # Ejecuta el comando date y lo guarda en la variable FECHA

echo "Soy $NOMBRE de $CURSO."
echo "Hoy es $FECHA"
echo "Estoy trabajando en el directorio $(pwd)"
