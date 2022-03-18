#!/usr/bin/env sh

clean() {
  echo "cleanup"
  rm -rf **/yarn.lock **/node_modules

  echo "installing deps..."
  yarn -q --cwd app 
}

run() {
  clean
  node ./app/index.js
}

run
