#!/bin/bash

#Bucle for para recorrer todos los archivos del directorio actual
for FILE in *; do

#If para comprobar que sea un archivo
if [[ -f $FILE ]]; then

#Esta variable recoge el tamaño (du -b), devolviendo el tamaño total del archivo con (-s) y luego con el cut solo recogemos el primer campo de la salida
SIZE=$(du -b -s "$FILE" | cut -f1)

#echo para mostrar el nombre y tamaño del archivo
echo "Archivo: $FILE"
echo "Tamaño del archivo: $SIZE bytes"

#elif para comprobar que sea un directorio
elif [[ -d $FILE  ]]; then

#Esta variable hace lo mismo pero esta vez recoge datos de directorios
SIZE_D=$(du -b -s "$FILE" | cut -f1)

#echo para mostrar nombre y tamaño del directorio
echo "Directorio: $FILE"
echo "Tamaño del directorio: $SIZE_D"

#Si es otro tipo de elemento, muestra un mensaje especificandolo
else
echo "$FILE no es un archivo ni un directorio"

fi
done

#separador visual
echo "_______________________"
