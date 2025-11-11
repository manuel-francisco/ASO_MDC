#!/bin/bash

rojo="\e[31m"
verde="\e[32m"
o="\e[0m"


test() {
out_modulo="$1"
out_salida="$2"
nombre="$3"

if echo "$1" | grep -q "$2" ; then
echo -e "\n\t${nombre}\t${verde}TEST\tOK${o}"
else
echo -e "\n\t${nombre}\t${rojo}TEST\tFALLIDO${o}"
fi
}

#Posibles resultados del script para comprobar su funcionamiento.
modulo1=$(echo -e "1\n4\n" | ./04_system_tools.sh)
modulo2=$(echo -e "2\n4\n" | ./04_system_tools.sh)
modulo3=$(echo -e "3\n4\n" | ./04_system_tools.sh)
modulo4=$(echo -e "r-2\n4\n" | ./04_system_tools.sh)
modulo5=$(echo -e "4\n" | ./04_system_tools.sh)

salida1="2025"
salida2="$(whoami)"
salida3="$(df -h /)"
salida4="pones"
salida5="SALIENDO"

test "${modulo1}" "${salida1}" "[FECHA]"
test "${modulo2}" "${salida2}" "[USUARIO]"
test "${modulo3}" "${salida3}" "[ESPACIO]"
test "${modulo4}" "${salida4}" "[ERROR]"
test "${modulo5}" "${salida5}" "[SALIR]"

