#!/bin/bash

# Biblioteca de funciones reutilizables

mostrar_fecha() {
    echo "Fecha actual: $(date)"
}

mostrar_usuario() {
    echo "Usuario actual: $(whoami)"
}

mostrar_espacio() {
    echo "Espacio en disco:"
    df -h /
}
