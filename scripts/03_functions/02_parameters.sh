#!/bin/bash

saludo_personalizado () {
nombre=$1
momento_dia=$2

echo="Argumentos intoducidos $#"

case $momento_dia in
	mañana)
		echo "Buenos dias $nombre. Que tengas una gran jornada"
	;;

	tarde)
		echo "Buenas tarde $nombre. Espero que tu dia este yendo bien"
	;;
	noche)
		echo "Buenas noches $nombre. Espero que descanses"
	;;
	*)
		echo "Hola $nombre. No detecto el "$momento_del_dia""
	;;
esac
}

saludo_personalizado "$1" "$2"
