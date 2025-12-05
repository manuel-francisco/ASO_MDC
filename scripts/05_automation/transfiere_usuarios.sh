#!/bin/bash

for ip in $(cat /root/github/ASO_MDC/scripts/05_automation/remotos.txt)
do
  echo "usuario" | scp /root/github/ASO_MDC/scripts/05_automation/usuarios.csv usuario@$ip:/home/usuario
done
