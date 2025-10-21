#!/bin/bash

#!/bin/bash

# Recorre todos los elementos del directorio actual
for FILE in *; do
    echo "---------------------"

    # Verifica si el elemento es un archivo
    if [[ -f $FILE ]]; then
        echo "Nombre del archivo: $FILE"

        # se usa stat para obtener el tamaño (Muestra el tamaño del archivo)
        SIZE=$(stat -c%s "$FILE")

        # si stat falló lo intenta intenta con du -b (Muestra el tamaño en disco)
        if [[ -z "$SIZE" ]]; then
            SIZE=$(du -b "$FILE" | cut -f1)
        fi

        # Si ambos comandos fallaron
        if [[ -z "$SIZE" ]]; then
            echo "No se pudo obtener el tamaño"
        else
            echo "El tamaño es de $SIZE bytes"
        fi

    # Verifica si es un directorio
    elif [[ -d "$FILE" ]]; then
        echo  "$FILE es un directorio"

    else
        echo "Elemento desconocido"
    fi
done

echo "----------------------------"

