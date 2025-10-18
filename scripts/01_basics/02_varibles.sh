#!/bin/bash

nombre=$(whoami)	# tu nombre
curso="ASIR"		# tu curso
fecha=$(date)		# fecha actual

echo "Me llamo $nombre de $curso."
echo "Hoy es $fecha."
echo "Y me encuentro en $(pwd)."
