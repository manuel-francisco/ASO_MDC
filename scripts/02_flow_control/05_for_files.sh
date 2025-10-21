#!/bin/bash

for FILE in *; do
    echo "----------------------------------------------"
    echo "Analizando: $FILE"

    # Comprobamos si el elemento es un archivo regular (-f)
    if [[ -f "$FILE" ]]; then
        # Si existe el comando 'stat', lo usamos para obtener el tamaño en bytes
        if command -v stat >/dev/null 2>&1; then
            SIZE=$(stat -c%s "$FILE")
        # Si no existe 'stat', usamos 'du -b' 
        elif command -v du >/dev/null 2>&1; then
            SIZE=$(du -b "$FILE" | cut -f1)
        else
            SIZE="Desconocido (no se encontró comando compatible)"
        fi

        echo "Tipo: Archivo"
        echo "Tamaño: $SIZE bytes"

    # Si es un directorio (-d)
    elif [[ -d "$FILE" ]]; then
        echo "Tipo: Directorio"
        echo "No se muestra tamaño (directorio)."

    # Otros tipos de elementos (enlaces, sockets, etc.)
    else
        echo "Tipo: Otro elemento (no archivo ni directorio)"
    fi
done

echo "----------------------------------------------"
echo "Fin del análisis."

