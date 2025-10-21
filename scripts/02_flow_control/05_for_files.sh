#!/bin/bash

for FILE in *; do  # El for busca todos los ficheros/directorios del directorio actual
if [ -f "$FILE" ]; then  # Verifica si los valores que entra en "$FILE" son ficheros o no
echo "Esto es un fichero"
du -b $FILE			# Condicion en el caso de ser fichero
else
echo "Esto es un directorio"
stat $FILE			# Condicion en el caso de ser un directorio
fi
done
