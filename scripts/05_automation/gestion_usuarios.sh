#!/bin/bash

# suponemos que tomamos como valor de entrada el fichero usuarios.csv

LOG="/var/log/gestion_usuarios.log"
ELIMINADOS="/home/.eliminados"

if ! [[ -d $ELIMINADOS ]]; then
    mkdir -p $ELIMINADOS
fi

function log(){
    echo "$(date) - $1 - $2 $3" >> "$LOG"
}

while IFS=',' read -r usuario grupo operacion; do
    case $operacion in
        "add")
            if grep -q "^$usuario:" /etc/passwd ;then
                log $operacion "El usuario ya existe:" $usuario
                continue
            else
                if grep -q "^$grupo:" /etc/group ;then
                    log $operacion "El grupo ya existe:" $grupo
                else
                    groupadd "$grupo"
                    log $operacion "creado el grupo" $grupo
                fi
                useradd -m -d "/home/$usuario" -g "$grupo" "$usuario"
                log $operacion "creado el usuario: $usuario"
            fi
            ;;

        "rm")
            if ! grep -q "^$usuario:" /etc/passwd;then
                log $operacion "No existe el usuario: $usuario"
                continue
            elif passwd -S "$usuario" | grep -q "L";then
                log $operacion "El usuario ya esta bloqueado: $usuario"
                continue
            else
                usermod -L $usuario
                mv "/home/$usuario" "$ELIMINADOS"
                log $operacion "El usuario ha sido bloqueado: $usuario"
            fi
            ;;
    esac
done < "usuarios.csv"


