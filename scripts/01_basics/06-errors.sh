#!/bin/bash

#if [[ $VAR==1 ]]
#then
#echo Hola k ase numero $numero ?
#ls /ruta/holamanu
#else
#echo adio
#fi

read -p "Elige un número el 1 o 0: " numero

VAR=$numero

if [[ $VAR -eq 1 ]]
then
echo "Hola k ase numero $numero ?"
ls -l /home
else
echo "adio quillo"
fi
