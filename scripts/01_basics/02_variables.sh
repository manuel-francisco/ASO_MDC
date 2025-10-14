#!/bin/bash

# Aqui tengo definidas todas las variables y sus funciones
NOMBRE=$(whoami)
CURSO="2º ASIR"
FECHA=$(date)
DIRECTORIO_ACTUAL=$(pwd)

# Aqui se muestra el mensaje que aparecera por pantalla
echo "Soy $NOMBRE de $CURSO.
Hoy es $FECHA.
Estoy trabajando en el directorio $DIRECTORIO_ACTUAL."
