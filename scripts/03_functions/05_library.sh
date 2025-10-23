#!/bin/bash
# Biblioteca de funciones reutilizables

function mostrar_fecha() {
    echo "Fecha actual: $(date)"
}

function mostrar_usuario() {
    echo "Usuario actual: $(whoami)"
}

function mostrar_espacio() {
    echo "Espacio en disco:"
    df -h /
}