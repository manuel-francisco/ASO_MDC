#!/bin/bash
CSV="usuarios.csv"
IPs="remotos.txt"

# Usuario y ruta remota
usuario_companero="usuario"
path_companero="/home/usuario/"

# Comprobación si existe el fichero csv
if [ ! -f "$CSV" ]; then
    echo "Ha habido un error: el fichero csv no existe."
    exit 1
fi

# Comprobación si existe el fichero remotos
if [ ! -f "$IPs" ]; then
    echo "Ha habido un error: El fichero de IPs no existe."
    exit 2
fi

# Mandamos el fichero csv a cada IP
while read -r ip; do
    scp "$CSV" "${usuario_companero}@${ip}:${path_companero}"

    # Comprobación si se ha enviado correctamente o no
    if [[ $? -eq 0 ]]; then
        echo "El fichero ha sido copiado a $ip."
    else
        echo "Ha habido un error: El fichero no se ha copiado a $ip."
        exit 3
    fi
done < "$IPs"
