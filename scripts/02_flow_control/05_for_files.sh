#!/bin/bash

# Bucle para recorrer el directorio archivo a archivo
for FILE in *;do
	# Comprueba si el archivo es un fichero
	if [[ -f $FILE ]];then
		# Mensaje que devuelve el nombre del fichero y su tamaño en bytes
		echo -e "Nombre: $FILE\tTamaño del fichero: $(stat -c %s $FILE)"
	# Comprueba si el archivo es un directorio
	elif [[ -d $FILE ]];then
		# Mensaje que devuelve el nombre del directorio y su tamaño en bytes, la flag -h significa human
		echo -e "Nombre: $FILE\tTamaño del directorio: $(du -h $FILE)"
	# Si no es ni un fichero ni un directorio, pasa a la siguiente iteracion
	else
		continue
	fi
done
