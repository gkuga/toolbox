#!/bin/sh

generate_random_chars () {
  local length=${1:-32}
  local charset=${2:-'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_`{|}~'}
  LC_ALL=C </dev/urandom tr -dc "$charset" | head -c "$length"
}
