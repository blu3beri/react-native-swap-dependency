#!/usr/bin/env sh

echo "cleanup"
rm -rf **/yarn.lock **/node_modules

echo "installing deps..."
yarn -q --cwd node
yarn -q --cwd wrapper
yarn -q --cwd reactnative

echo "rn..."
cd reactnative
pod install --project-directory=ios/
cd -

node node/index.js
echo "SHOULD SAY: node"
yarn --cwd reactnative ios
