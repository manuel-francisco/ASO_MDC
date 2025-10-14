#!/bin/bash

read -p "Introduce tu nombre: " nombre
read -p "Introduce tu edad: " edad

opera=$((100-$edad))

echo "Hola $nombre, te quedan $opera años para cumplir 100"
