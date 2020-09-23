#!/bin/sh

DIR="node_modules"
DIR2="dist"

NpmInstall(){
  exec npm install
}

NpmBuild(){
  exec npm run build
}

NpmRunDev(){
  exec npm run start:dev
}

if [ ! -d $DIR ];then
  NpmInstall & wait
fi

if [ ! -d $DIR2 ];then
  NpmBuild & wait
fi

echo "API start"
NpmRunDev