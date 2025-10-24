#!/bin/bash

# Script que muestra todos los archivos, sus nombres y tamaños.

for FILE in *; do
	echo "========================="
	echo "Nombre del archivo: $FILE"   # Escribe el nombre de todos los archivos dentro del directorio actual
	echo "-------------------------"
	stat -c '%s' $FILE
	echo "========================="

done
