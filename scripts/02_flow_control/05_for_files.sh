#!/bin/bash

for FILE in *
do
	if [ -f "$FILE" ]
	then
		SIZE=$(du -b "$FILE" | cut -f1)

		echo "Archivo: $FILE"
		echo "Tamaño: $SIZE bytes"
	else
		echo "Elemento: $FILE"
		echo "No es un archivo regular"
	fi
	echo "-------------------------------------------------"
done
