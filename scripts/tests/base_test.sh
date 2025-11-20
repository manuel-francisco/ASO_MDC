#!/bin/bash
# tests/base_test.sh
set -uo pipefail

# Colores
RED=$'\033[0;31m'
GREEN=$'\033[0;32m'
YELLOW=$'\033[0;33m'
BOLD=$'\033[1m'
NC=$'\033[0m'

__BT_TOTAL=0
__BT_PASS=0
__BT_FAIL=0

# match_stdout PATTERN TEXT
# - '*' en cualquier lugar = comodín
# - '\*' = asterisco literal
# - '?', '[', ']' se tratan como literales
match_stdout() {
  local pattern="$1"
  local text="$2"

  # Paso 1: proteger asteriscos literales '\*' con un placeholder
  local PLACE=$'\001'
  pattern="${pattern//\\\*/$PLACE}"

  # Paso 2: escapar metacaracteres de patrón (excepto '*')
  # En patrones de [[ ]], \, ?, [, ] son especiales. Los escapamos.
  pattern="${pattern//\\/\\\\}"  # backslash -> literal backslash
  pattern="${pattern//\?/\\?}"
  pattern="${pattern//\[/\\[}"
  pattern="${pattern//\]/\\]}"

  # Paso 3: restaurar asteriscos literales como '\*'
  pattern="${pattern//${PLACE}/\\*}"

  # Paso 4: hacer el match con globbing (donde '*' actúa como comodín)
  [[ $text == $pattern ]]
}

# test_case "Nombre" "comando" "stdout_esperado (con o sin * en extremos)" codigo_retorno_esperado
test_case() {
  local name="$1"
  local cmd="$2"
  local expected_stdout="$3"
  local expected_rc="$4"

  __BT_TOTAL=$((__BT_TOTAL + 1))

  local out rc
  out="$(bash -c "$cmd" 2>&1)"; rc=$?

  if match_stdout "$expected_stdout" "$out" && [[ $rc -eq $expected_rc ]]; then
    printf "%s✔%s %s\n" "$GREEN" "$NC" "$name"
    __BT_PASS=$((__BT_PASS + 1))
  else
    printf "%s✖%s %s\n" "$RED" "$NC" "$name"
    printf "   esperado: rc=%s, stdout ~ %q\n" "$expected_rc" "$expected_stdout"
    printf "   obtenido: rc=%s\n" "$rc"
    printf "   stdout obtenido:\n"
    printf "%s\n" "$out" | sed 's/^/     /'
    __BT_FAIL=$((__BT_FAIL + 1))
  fi
}

from_file() {
  local f="$1"
  cat "$f"
}

summary() {
  echo
  printf "%sResultados:%s %d pruebas — %s%d OK%s, %s%d FAIL%s\n" \
    "$BOLD" "$NC" "$__BT_TOTAL" "$GREEN" "$__BT_PASS" "$NC" "$RED" "$__BT_FAIL" "$NC"
  [[ $__BT_FAIL -eq 0 ]]
}