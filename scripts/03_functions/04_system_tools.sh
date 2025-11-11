#!/bin/bash

mostrar_fecha() {
date
}

mostrar_usuario() {
whoami
}

mostrar_espacio() {
df -h /
}

menu() {
echo -e "1) Mostrar fecha actual\n2) Mostrar usuario actual\n3) Mostrar espacio en disco\n4) Salir\n"
read -p "Elige > " gol
}

#A continuación muestra la funcion ´menu´
menu

# Este while no va a parar de ejecutarse hasta que $gol no sea 4 
while [[ $gol -ne 4 ]];
do
# Esto es que en caso de que $gol tenga los valores 1,2,3 o cualquier otra cosa. Da unos valores u otros.
case $gol in
1)
echo -e "Fecha actual: $(mostrar_fecha)\n"
sleep 1
menu
;;
2)
echo -e "Usuario actual: $(mostrar_usuario)\n"
sleep 1
menu
;;
3)
echo -e "Espacio actual: $(mostrar_espacio)\n"
sleep 1
menu
;;
*)
echo -e "¿Que pones?\n"
sleep 1
menu
;;
esac
done

echo -e "MADRE MIA PACO ...\n"
