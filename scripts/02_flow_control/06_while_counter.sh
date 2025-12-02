#!/bin/bash

read -p "Introduce un número mayor que 0: " num

#Esta variable es para usarla como contador
xnum=1

echo "1"

#Mientras que xnum se diferte a num seguira sumando

while [[ $xnum -ne $num && $num -gt "0" ]]; do

	xnum=$(($xnum+1))
	echo "$xnum"
done

echo "Contador finalizado. Se han mostrado $num números"
