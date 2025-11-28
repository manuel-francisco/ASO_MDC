#!/bin/bash

LOG="/var/log/gestion_usuarios.log"
CSV="/usr/local/bin/usuarios.csv"

if [[ -d /home/.eliminados ]]; then
    echo "El directorio /home/.eliminados ya existe, omitiendo la creacion"
else
    mkdir -p /home/.eliminados
fi

while IFS=',' read -r usuario grupo operacion; do
    [[ -z "$usuario" ]] || [[ -z "$grupo" ]] || [[ -z "$operacion" ]] && continue

    grep -q "^$grupo:" /etc/group || (groupadd "$grupo" && echo "$(date) - grupo creado: $grupo" >> "$LOG")
    if [[ "$operacion" = "add" ]]; then
        grep -q "^$usuario:" /etc/passwd && { echo "$(date) - add - usuario ya existe: $usuario" >> "$LOG"; continue; }
        useradd -m -g "$grupo" "$usuario" && { echo "$(date) - add - usuario creado: $usuario" >> "$LOG"; continue; }
    elif [[ "$operacion" = "rm" ]]; then
        grep -q "^$usuario:" /etc/passwd || { echo "$(date) - rm - usuario no existe: $usuario" >> "$LOG"; continue; }
        passwd -S "$usuario" | grep -q "L" && { echo "$(date) - rm - usuario bloqueado: $usuario" >> "$LOG"; continue; }
        usermod -L "$usuario"
        [[ -d "/home/$usuario" ]] && mv "/home/$usuario" "/home/.elimnados/$usuario"
        echo "$(date) - rm - usuario bloqueado y home movido: $usuario" >> "$LOG"
    fi
done < "$CSV"
