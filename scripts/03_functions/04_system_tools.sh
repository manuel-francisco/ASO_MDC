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
echo -e "1) Mostrar fecha actual\n2) Mostrar usuario actual\n3) Mostrar espacio en disco\n4) Salir"
echo " "
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
mostrar_fecha
sleep 1
echo ""
menu
;;
2)
mostrar_usuario
sleep 1
echo ""
menu
;;
3)
mostrar_espacio
sleep 1
echo ""
menu
;;
*)
echo ¿Que pones?
sleep 1
echo ""
menu
;;
esac
done

clear
