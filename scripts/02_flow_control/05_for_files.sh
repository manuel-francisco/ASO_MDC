#!/bin/bash
# Script para recorrer todos los elementos del directorio actual y mostrar info

# Usamos un bucle for para iterar sobre los elementos del directorio actual
for FILE in *; do
  echo "------------------------------"
  # Comprobamos si el elemento es un archivo regular
  if [[ -f "$FILE" ]]; then
    echo "Archivo: $FILE"
    # Obtenemos tamaño en bytes usando stat
    if stat --version &> /dev/null; then
      SIZE=$(stat -c%s "$FILE")
    else
      # fallback usando du -b en sistemas sin GNU stat
      SIZE=$(du -b "$FILE" | cut -f1)
    fi
    echo "Tamaño: $SIZE bytes"
  elif [[ -d "$FILE" ]]; then
    # Si es directorio mostramos mensaje distinto
    echo "Directorio: $FILE"
  else
    # Para otros tipos de archivos (enlaces, dispositivos, etc)
    echo "Otro tipo de archivo: $FILE"
  fi
done
echo "------------------------------"
