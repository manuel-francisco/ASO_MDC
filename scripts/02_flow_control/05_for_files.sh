#!/bin/bash
#Hace la lista de todos los archivos en el directorio actual
for FILE in *; do

#Comprovar si son archivo
	if [[ -f $FILE ]]; then

#Verifica si el comando stat está disponible en el sistema
		if comand -v stat >/dev/null 2>&1; then
			SIZE=$(du -b "$FILE" | cut -f1) #Se usa para mostrar el tamaño del archivo
		fi
	echo "Archivo: $FILE"
	echo "Tamaño: $SIZE bytes"
	else
		echo "No es un archivo $FILE"
	fi
done
