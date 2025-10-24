#!/bin/bash
# Script para interactuar con el usuario solicitando nombre y edad,
# y calcular cuántos años faltan para cumplir 100.

# Solicitar al usuario que introduzca su nombre
echo -n "Introduce tu nombre > "
read nombre

# Solicitar al usuario que introduzca su edad
echo -n "Introduce tu edad > "
read edad

# Comprobar que se haya introducido una edad válida (no vacía y solo números) con un solo if
if [[ -z "$edad" || ! "$edad" =~ ^[0-9]+$ ]]; then
  echo "Error: Debes introducir una edad válida (número entero)."
  exit 1
fi

# Mostrar saludo personalizado con el nombre

# Calcular los años que faltan para cumplir 100
resto=$((100 - edad))

# Mostrar resultado con mensaje formateado
echo "Hola $nombre , te quedan $resto años para llegar al siglo."
