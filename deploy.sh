#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist
git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://lumod97.github.io/facturacion_electronica
git push -f https://github.com/lumod97/facturacion_electronica.git master:main

cd -
