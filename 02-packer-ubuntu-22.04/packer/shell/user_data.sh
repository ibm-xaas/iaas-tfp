#!/bin/bash

function retry {
  local max=$1; shift
  local delay=$1; shift
  local cmd=($@)
  local n=1
  while true; do
    "${cmd[@]}" && break || {
      if [[ $n -lt $max ]]; then
        echo "Command failed. Attempt $n/$max\n"
        ((n++))
        sleep $delay
      else
        echo "The command has failed after $n attempts."
        exit 1
      fi
    }
  done
}

apt list | grep unattended
retry 10 60 sudo apt remove unattended-upgrades -y
apt list | grep unattended
retry 10 60 sudo apt purge unattended-upgrades -y
apt list | grep unattended
curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh  | sh -s -- -b /usr/local/bin
curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b /usr/local/bin
