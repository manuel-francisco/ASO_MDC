#!/bin/bash

read "Introduce tu nombre " nombre
read "Introduce tu edad " edad

opera=$((100 - $edad))

echo "Hola $nombre, te quedan $opera años para cumplir 100"
