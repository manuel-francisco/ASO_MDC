#!/bin/bash

#Por cada fichero, va a dar una vuelta

for FILE in *; do

	#archivo normal y corriente. stat -c%s lo que hace es calcular el tamaño en bytes del archivo que vamos a comprobar
if [[ -f "$FILE" ]]; then
TAMANYO=$(stat -c%s "$FILE")
	echo "Nombre del fichero: $FILE"
	echo "Tamaño: Ocupa $TAMANYO bytes"
	#está puesto como "tamanyo" para que bash no se confunda por la ñ al definir la variable, por si acaso

	#comprueba si es un directorio
elif [[ -d "$FILE" ]]; then
	echo "$FILE no es un archivo regular"

	#no es un directorio ni es un archivo regular
	else
	echo "$FILE"
	fi
done
