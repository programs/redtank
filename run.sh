#!/bin/bash

currpath=`pwd`
redtankp=${currpath}/../redtank

docker run -d --name buildtank -e PUBLICHOST=50080 -v ${redtankp}:/data/redtank wisbyme/siteapp-redtank:latest
docker exec buildtank bash -c "/usr/bin/build.sh"

sleep 1s
docker stop buildtank > /dev/null 2>&1 && docker rm buildtank > /dev/null 2>&1

./pack.sh
