#!/bin/bash

currpath=`pwd`
redtankp=${currpath}/../redtank
redtankf=${currpath}/../redtankfront

if [ -f ./redtank ]; then
	rm -f ./redtank
fi
if [ -d ./conf ]; then
	rm -rf ./conf
fi
if [ -d ./html ]; then 
	rm -rf ./html
fi

mkdir -p ${currpath}/html ${currpath}/conf ${currpath}/service

cp ${redtankp}/bin/redtank .
cp -R ${redtankf}/dist/* ./html
cp -R ${redtankp}/src/tank/build/conf/* ./conf
cp -R ${redtankp}/src/tank/build/service/* ./service

echo 'done.'
