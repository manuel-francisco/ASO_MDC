#!/bin/bash

remoto="/home/hugo/Escritorio/remotos.txt"
csv="/home/hugo/Escritorio/05_automation/usuarios.csv"
destino="/home/$usu/Escritorio"

while IFS="," read -r ip usu; do
	scp "$csv" "$usu"@"$ip":"$destino"
done < "$remoto"
