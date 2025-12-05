#!/bin/bash

if [[ ! -d /tmp/backup ]];then
    mkdir /tmp/backup
fi

if [[ $# -eq 0 ]];then
    echo "Debes indircar al menos un fichero o directorio"
    exit 1
fi

for arg in "$@"; do
    if [[ ! -e $arg ]];then
        echo "Error en la ruta \"$arg\": No existe el fichero o directorio" >&2
        echo "Ignorando \"$arg\"" >&2
        continue
    fi

    zstd "$arg" -o /tmp/backup/$(basename "${arg}").zst
done

tar cf /tmp/backup_$(hostname)_$(date -u +'%Y%m%d%H:%M').tar /tmp/backup/*
