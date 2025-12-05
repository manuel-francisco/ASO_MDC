#!/bin/bash



while IFS='@' read usuario maquina;do
	if [[ -z "$usuario" ]];then
		continue
	else
		scp -i /home/usuario1/.ssh/id_ed25519_usuario1 /home/usuario1/usuarios.csv "$usuario@$maquina":/home/"$usuario"/
	fi
done < /home/usuario1/remotos.txt
