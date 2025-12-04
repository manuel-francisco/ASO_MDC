#!/bin/bash
csv="usuarios.csv"                         # Ruta al archivo CSV con los datos (usuario, grupo, operación)
log="/var/log/gestion_usuarios.log"        # Archivo donde se deja registro de todas las operaciones

while IFS=',' read -r usuario grupo operacion; do  # Lee cada línea del CSV separándola por comas
    # 1. Comprobar si el grupo existe. Si no, crearlo
    # Se utiliza 'getent group' para comprobar de forma estándar y portable si el grupo existe.
    if ! getent group "$grupo" > /dev/null; then
        groupadd "$grupo"                  # Si el grupo no existe, lo crea con 'groupadd'
        echo "$(date) - groupadd - $grupo" >> $log   # Registra la creación del grupo en el log
    fi

    # 2. Según la operación ("add" para añadir, "rm" para eliminar/bloquear)
    if [[ "$operacion" == "add" ]]; then
        # Comprueba si el usuario ya existe.
        if getent passwd "$usuario" > /dev/null; then
            # Si ya existe, lo anota en el log e ignora la creación para evitar duplicados.
            echo "$(date) - add-usuario-existe - $usuario" >> $log
            continue
        fi
        # Crea el usuario con su home (-m) y lo asigna al grupo indicado (-g).
        # 'useradd' es el comando estándar para añadir usuarios.
        useradd -m -g "$grupo" "$usuario"
        echo "$(date) - add - $usuario" >> $log
        # Se asegura que el directorio /home/usuario exista.
        [[ ! -d /home/"$usuario" ]] && mkdir -p /home/"$usuario"

    elif [[ "$operacion" == "rm" ]]; then
        # Comprueba si el usuario existe antes de eliminar o bloquear.
        if ! getent passwd "$usuario" > /dev/null; then
            echo "$(date) - rm-usuario-no-existe - $usuario" >> $log
            continue
        fi
        # Verifica si el usuario ya está bloqueado para evitar doble bloqueo.
        # 'passwd -S' muestra el estado; si contiene "L" está bloqueado.
        if passwd -S "$usuario" | grep -q "L"; then
            echo "$(date) - rm-usuario-bloqueado - $usuario" >> $log
            continue
        fi
        passwd -l "$usuario"      # Bloquea la cuenta del usuario
        mv /home/"$usuario" /home/eliminados/"$usuario"   # Mueve su home a /home/eliminados
        echo "$(date) - rm - $usuario" >> $log            # Registra la operación en el log
    fi
done < "$csv"    # Termina el bucle procesando todas las líneas del archivo CSV
