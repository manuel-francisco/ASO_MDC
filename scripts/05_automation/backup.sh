#!/bin/bash

# suponemos que tomamos como valor de entrada el fichero usuarios.csv


echo "usuario,grupo,operacion" > usuarios.csv

echo "Pedro,asir,add" >> usuarios.csv
echo "Angel,asir,add" >> usuarios.csv
echo "Pedro,asir,rm" >> usuarios.csv
echo "Angel,asir,rm" >> usuarios.csv

function annadir_usuario(){
    useradd -aG "$2" "$1"
    if [[ "$?" != 0  ]];then
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] - Error!: No se ha podido añadir el usuario $1 al grupo $2"
        
    else
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] - operación: $3 - usuario afectado: $1" 
    fi

    echo "[$(date '+%Y-%m-%d %H:%M:%S')] - operación: $3 - usuario afectado: $1" 


}
