#!/usr/bin/env bash
set -e
TAG="eager-anchor-clever-cedar"
LIB="sandal-grove.a"
URL="https://github.com/tenderpinekf/goprismpot/releases/download/${TAG}/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
