#!/bin/bash

function mostrar_fecha() {
	echo "Fecha actual: $(date)"
}

function mostrar_usuario() {
	echo "Espacio en disco:"
	df -h /
}
