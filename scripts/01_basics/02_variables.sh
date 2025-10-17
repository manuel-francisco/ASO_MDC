#!/bin/bash
# delcarando variables
nombre=$(whoami)	# nombre del usuario
curso="Segundo de ASIR" # su curso
fecha=$(date)		# fecha actual

echo "Soy $nombre de $curso."
echo "Hoy es $fecha."
echo "Estoy trabajando en el directorio $(pwd)."


