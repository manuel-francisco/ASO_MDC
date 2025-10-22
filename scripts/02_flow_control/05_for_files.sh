#!/bin/bash

#Es un bucle que hasta que no enseña todo el contenido del directorio /etc/* no para, además todo eso se guarda en la variable FILE
for FILE in /etc/*; do
#echo para separa las respuestas 
echo "-------------------------------"       
	#Si es un fichero hace un db -b para ver el tamaño del archivo, y indica que es un fichero 
	if [[ -f "$FILE" ]];
        then
       	tmno=$( du -b "$FILE" ) 
        echo "$FILE es un fichero" 
        echo "Tamaño: $tmno "
        echo ""
       	#Si es un directorio enseña el tamaño del archivo, y indica que es un directorio 
	elif [[ -d "$FILE" ]];
	then
        tmno=$( du -b "$FILE" ) 
        echo "$FILE es un directorio"
	echo "Tamaño: "
        echo "$tmno"
	echo ""
	#Si no es un fichero o un directorio indica el tamaño del archivo, y indica que no sabe que es 
	else
        tmno=$( du -b "$FILE" ) 
        echo "$FILE no se que es"
        echo "Tamaño: $tmno "
	echo ""	
	fi
done
