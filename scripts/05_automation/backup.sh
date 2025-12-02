#!/bin/bash

# Especifico el fichero csv a utilizar
CSV="usuarios.csv"
# Especifico la ruta del log
LOG="/var/log/gestion_usuarios.log"

# Esto es para confirmar que LOG existe.
touch "$LOG"

while IFS=',' read -r usuario grupo operacion; do
   fecha=$(date '+%Y-%m-%d %H:%M:%S')

   case "$operacion" in

# Primer caso de operación --> add
      add)

# Si el grupo no existe, lo creo
         if ! getent group "$grupo" &>/dev/null; then
            groupadd "$grupo"
            echo "$fecha - add - $grupo ha sido creado" >> "$LOG"
         fi

# Comprobación de la existencia del usuario
         if id "$usuario" &>/dev/null; then
            echo "$fecha - add - $usuario ya existe, va a ser ignorado" >> "$LOG"
            continue
         fi

# Ahora, si el usuario no existe, lo creo
         useradd -m -g "$grupo" "$usuario"
         if [ $? -eq 0 ]; then
            echo "$fecha - add - $usuario ha sido añadido al grupo ($grupo)" >> "$LOG"
         else
            echo "$fecha - add - Ha habido un error al crear el usuario ($usuario)" >> "$LOG"
         fi
         ;;

# Segundo caso de operación --> rm
      rm)

# Igual que antes, compruebo si el usuario existe o no.
         if ! id "$usuario" &>/dev/null; then
            echo "$fecha - rm - $usuario no existe, va a ser ignorado" >> "$LOG"
            continue
         fi

# Ahora compruebo si el usuario ya está bloqueado
         estado=$(passwd -S "$usuario" | awk '{print $2}')
         if [ "$estado" = "L" ]; then
            echo "$fecha - rm - El usuario $usuario ya está bloqueado, va a ser ignorado" >> "$LOG"
            continue
         fi

# Si el usuario no está bloqueado, se bloquea
         usermod -L "$usuario"

# Matar procesos activos del usuario (opcional, por seguridad)
         pkill -u "$usuario" 2>/dev/null

# Obtener el home real del usuario
         HOME_DIR=$(getent passwd "$usuario" | cut -d: -f6)
         DEST="/home/.eliminados/$usuario"
         mkdir -p /home/.eliminados

         if [ -d "$HOME_DIR" ]; then
            mv "$HOME_DIR" "$DEST"
            echo "$fecha - rm - $usuario ha sido bloqueado y su home se ha movido al directorio de eliminados" >> "$LOG"
         else
            echo "$fecha - rm - $usuario bloqueado y no hay home" >> "$LOG"
         fi
         ;;
      *)
         echo "$fecha - ERROR - La operación es desconocida ($operacion) para el usuario ($usuario)" >> "$LOG"
         ;;
   esac
done < "$CSV"
