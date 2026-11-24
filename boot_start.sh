#!/usr/bin/env bash
set -e
REPO="affiorahollow/mirroredpillarkit"
LIB="clear-barrel.a"
URL="https://github.com/${REPO}/releases/download/bright-garden-gentle-forest/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -std=c++17 -O2 -pthread -o app main.cpp "$LIB" && ./app
