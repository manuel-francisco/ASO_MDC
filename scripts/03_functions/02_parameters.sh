#!/bin/bash

# Definición de la función saludo_personalizado que recibe dos parámetros
saludo_personalizado () {
  local nombre=$1       # Primer parámetro: nombre del usuario
  local momento=$2      # Segundo parámetro: momento del día (mañana, tarde, noche)

  # Comprobar el valor del segundo parámetro para mostrar el saludo adecuado
  if [[ "$momento" = "mañana" ]]; then
    echo "Buenos dias, $nombre. Una gran jornada le aguarda."
  elif [[ "$momento" = "tarde" ]]; then
    echo "Buenas tardes $nombre. El ocaso aun no ha llegado."
  elif [[ "$momento" = "noche" ]]; then
    echo "Buenas noches $nombre. El fin de un gran día se acerca."
  else
    # Si no coincide con ninguna opción válida, indica error al usuario
    echo "Pon dos argumentos y que el segundo sea mañana tarde o noche"
  fi

  # Mostrar cuántos argumentos ha recibido la función
  echo "La funcion ha recibido $# argumentos"
}

# Llamada a la función pasando los primeros dos parámetros que se recibieron en el script
saludo_personalizado "$1" "$2"
