#!/bin/bash

#Aquí indico valores para colorear los resultados de OK y FALLIDO
rojo="\e[31m"
verde="\e[32m"
#Uso este para finalizar el uso de rojo o verde.
o="\e[0m"


test() {
#Indico que el  argumento num3 es nombre.
nombre="$3"

#Este if indica que si en el argumento $1 esta lo que hay en el argumento $2, este dice que OK si no da FALLO.
#No he puesto [] o [[]] porque quería que fuese una cadena de texto, poniendo [] o [[]] no funciona.  
#Busca el argumento $2 en $1.
if echo "$1" | grep -q "$2" ; then
echo -e "\n\t${nombre}\t\t${verde}TEST\tOK${o}"
else
echo -e "\n\t${nombre}\t\t${rojo}TEST\tFALLIDO${o}"
fi
}

#Posibles resultados del script para comprobar su funcionamiento.
modulo1=$(echo -e "1\n4\n" | ./04_system_tools.sh)
modulo2=$(echo -e "2\n4\n" | ./04_system_tools.sh)
modulo3=$(echo -e "3\n4\n" | ./04_system_tools.sh)
modulo4=$(echo -e "r-2\n4\n" | ./04_system_tools.sh)
modulo5=$(echo -e "4\n" | ./04_system_tools.sh)

#Salidas correctos de los test.
salida1="2025"
salida2="$(whoami)"
salida3="$(df -h /)"
salida4="pones"
#Error adrede para comprobar que hay fallo
salida5="SALIENDO"

#Resultados de los test realizados en el ejercicio.
echo "TESTS 04_SYSTEM_TOOLS:"
test "${modulo1}" "${salida1}" "[FECHA]"
sleep 1
test "${modulo2}" "${salida2}" "[USER]"
sleep 1
test "${modulo3}" "${salida3}" "[DISCO]"
sleep 1
test "${modulo4}" "${salida4}" "[ERROR]"
sleep 1
test "${modulo5}" "${salida5}" "[SALIR]"
echo " "
