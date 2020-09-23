#!/bin/sh

DIR="node_modules"

NpmInstall(){
  exec npm install
}

NpmRunDev(){
  exec npm run dev
}

if [ ! -d $DIR ];then
  NpmInstall & wait
fi

echo "NODE start"
NpmRunDev