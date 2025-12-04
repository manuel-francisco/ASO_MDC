#!/bin/bash
REMOTOS="remotos.txt"
ORIGEN="usuarios.csv"
DESTINO="/home/usuario/usuarios.csv"

while read -r ip; do
    # Saltar líneas vacías o comentarios
    [[ -z "$ip" || "$ip" =~ ^# ]] && continue

    echo "Copiando $ORIGEN a $ip..."
    scp "$ORIGEN" usuario@"$ip":"$DESTINO"
done < "$REMOTOS"
