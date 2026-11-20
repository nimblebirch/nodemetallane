#!/usr/bin/env bash
set -e
LIB="velvet-raft.a"
TAG="frosty-forest-golden-forest"
REPO="nimblebirch/nodemetallane"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
