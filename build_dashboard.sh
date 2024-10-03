#!/usr/bin/env bash

cd "$(dirname "$0")/app/dashboard" || exit
VITE_BASE_API=/api/ npm run build --if-present -- --outDir build --base '/dashboard/'
cp ./build/index.html ./build/404.html
