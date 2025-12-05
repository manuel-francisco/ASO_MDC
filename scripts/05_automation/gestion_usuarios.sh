#!/bin/bash

CSV="usuarios.csv"
LOGFILE="/github/ASO_MDC/scripts/05_automation"
ELIMINADOS="/home/.eliminados"

mkdir -p "$ELIMINADOS"

while IFS="," read -r usuario grupo operacion; do

  if [[ -z "$usuario" || -z "$grupo" || -z "$operacion" ]];
  then
    echo "ERROR"
    continue
  fi

  if ! getent group "$grupo" > /dev/null;
  then
    groupadd "$grupo"
    echo "EL grupo se creó correctamente"
  fi

  case "$operacion" in
    add)
      if id "$usuario" &>/dev/null;
      then
        echo "ERROR: El usaurio ya existe"
        continue
      fi

      useradd -m "/home/$usuario" -g "$grupo" "$usuario"

      if [[ $? -ne 0 ]];
      then
        echo "ERROR: El usuario no se ha podido crear"
        continue
      fi

      useradd $usuario
      echo "El usuario se creó correctamente"
      ;;

    rm)
      if ! id "$usuario" &>/dev/null;
      then
        echo "ERROR: El usuario no existe"
        continue
      fi

      if passwd -S "$usuario" | grep -q "L";
      then
        echo "ERROR: El usuario ya está bloqueado"
        continue
      fi
      usermod -L "$usuario"
      echo "Usuario bloqueado"

      HOMEUSER=$(getent passwd "$usuario" | cut -d: -f6)

      if [[ -d "$HOMEUSER" ]];
      then
        mv "$HOMEUSER" "$ELIMINADOS/"
        echo " El home de $usuario se movió a $ELIMINADOS"
      fi
      ;;

    *)
      echo "ERROR: Operación inválida"
      ;;

  esac

done > "$SCV"
