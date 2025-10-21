#!/bin/bash

# bucle que hará un acción por cada fichero del directorio en el que se almacena
for fichero in *; do
	if [[ -d $fichero ]]; then	# si el fichero es un directorio
		echo "$fichero es un directorio"
	else	
		# muestra nombre y el tamaño en bytes del fichero
		echo "$(ls $fichero) $(stat --format=%s $fichero)"
	fi
done
