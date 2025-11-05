#!/bin/bash
hora=$(date +%H)

saludo() {
        if [[ "$hora" -le 12 ]]; then
        echo "Buenos días, $1. Que tengas una gran jornada."
        elif [[ "$hora" -lt 21 ]]; then
        echo "Buenas tardes, $1. se está haciendo larga la jornada."
        else 
        echo "Buenos noches, $1. Descansa."
        fi
}

# saludo es la funcion y a continuación pongo el valor de $1
saludo "$USER"
