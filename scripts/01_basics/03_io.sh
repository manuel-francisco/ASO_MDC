#!/bin/bash
read -p "Introduce tu nombre > " NOMBRE
read -p "Introduce tu edad > " EDAD

if [[ -z "${EDAD}" ]] || ! [[ "${EDAD}" =~ ^[0-9]+$ ]]; then
  echo "Error: debes introducir una edad numérica."
  exit 1
fi

FALTAN=$((100 - EDAD))
echo "Hola ${NOMBRE}, te quedan ${FALTAN} años para cumplir 100."
