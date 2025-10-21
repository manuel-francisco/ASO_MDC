#!/bin/bash

saludo_personalizado () {
    local nombre=$1
    local momento=$2


    if [[ "$momento" = "mañana" ]]; then
        echo "Buenos dias, $nombre. Que tengas buena mañana."
    elif [[ "$momento" = "tarde" ]]; then
        echo "Buenas tardes $nombre. Que tengas buena tarde."
    else
        echo "Buenas noches $nombre. Que tengas buena noche."
    fi
    
    echo "La funcion ha recibido $# argumentos"
}
    
saludo_personalizado "Jaime" "noche"