#!/bin/bash
# Biblioteca de funciones reutilizables

# función que muestra la fecha y hora
function mostrar_fecha() {
    echo "Fecha actual: $(date)"
}

# función que muestra el usuario actual
function mostrar_usuario() {
    echo "Usuario actual: $(whoami)"
}

# función que muestra el uso de la raíz
function mostrar_espacio() {
    echo "Espacio en disco:"
    df -h /
}