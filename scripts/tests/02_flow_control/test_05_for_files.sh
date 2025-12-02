#!/bin/bash

source "scripts/tests/base_test.sh"
SCRIPT="../scripts/02_flow_control/05_for_files.sh"


mkdir tmp
cd tmp
touch prueba.txt


test_case "Es un Archivo" \
  "$SCRIPT" \
  "*Tipo: Archivo*" \
  0

rm prueba.txt 
mkdir tmp2


test_case "Es un Directorio" \
  "$SCRIPT" \
  "*Tipo: Directorio*" \
  0

rm -r tmp2
mkfifo otra_cosa

test_case "Es otra cosa" \
  "$SCRIPT" \
  "*Tipo: Otro elemento (no archivo ni directorio)*" \
  0

cd ..
rm -r tmp

summary || exit 1
