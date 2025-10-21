#!/bin/bash

# Inicializamos el bucle for que actua sobre todos los archivos del directorio actual
for FILE in *; do

	# Comprobamos si el fichero lo es usando la opcion -f 
	if [[ -f "$FILE" ]]; then

		# Definimos la variable espacio la cual registra el tamaño en bytes con du -b y luego con el cut extraemos solo la primera columna
		espacio=$(du -b "$FILE" | cut -f1)

		# Mostramos el nombre y el tamaño en bytes del archivo
		echo "Archivo: $FILE"
		echo "Espacio consumido: $espacio bytes"

	# Si no es un archivo (ej: un directorio)
	elif [[ -d "FILE" ]]; then
		echo "Directorio: $FILE"
		echo "Los directorios no muestran el tamaño individual"

	else
		# Para otro tipo de elementos (ej: enlace simbolico)
		echo "Elemento: $FILE"

	fi

	# Separador visual
	echo "--------------------------"

done
		
