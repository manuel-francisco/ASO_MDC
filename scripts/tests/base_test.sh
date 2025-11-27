#!/bin/bash
set -uo pipefail

RED=$'\033[0;31m'
GREEN=$'\033[0;32m'
YELLOW=$'\033[0;33m'
BOLD=$'\033[1m'
NC=$'\033[0m'

__BT_TOTAL=0
__BT_PASS=0
__BT_FAIL=0

match_stdout() {
  local pattern="$1"
  local text="$2"

  local PLACE=$'\001'
  pattern="${pattern//\\\*/$PLACE}"

  pattern="${pattern//\\/\\\\}"
  pattern="${pattern//\?/\\?}"
  pattern="${pattern//\[/\\[}"
  pattern="${pattern//\]/\\]}"

  pattern="${pattern//${PLACE}/\\*}"

  [[ $text == $pattern ]]
}

test_case() {
  local name="$1"
  local cmd="$2"
  local expected_stdout="$3"
  local expected_rc="$4"

  __BT_TOTAL=$((__BT_TOTAL + 1))

  local out rc
  out="$(bash -c "$cmd" 2>&1)"; rc=$?

  if match_stdout "$expected_stdout" "$out" && [[ $rc -eq $expected_rc ]]; then

