#!/bin/bash

mkdir -p $GOPATH/src/tank
cp -R /data/redtank/src/tank/* $GOPATH/src/tank
git clone https://github.com/eyebluecn/golang.org.git $GOPATH/src/golang.org

cd $GOPATH/src/tank

go get github.com/disintegration/imaging
go get github.com/json-iterator/go
go get github.com/go-sql-driver/mysql
go get github.com/jinzhu/gorm
go get github.com/nu7hatch/gouuid

go install tank
cp $GOPATH/src/tank/build/tank /data/redtank/bin

echo "done".
