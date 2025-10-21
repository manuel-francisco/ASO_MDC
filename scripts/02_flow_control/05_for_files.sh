#!/bin/bash

for FILE in *; do
	if [ -f "$FILE" ]; then
	if command -v stat >/dev/null 2>&1; then
		SIZE=$(du -b "$FILE" | cut -f1)
	fi
	echo "Archivo: $FILE"
	echo "Tamaño: $SIZE bytes"
	else
	echo "No es un archivo $FILE"
	fi
done
