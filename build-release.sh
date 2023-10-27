#!/bin/bash

backup=`pwd`
DIR="$( cd "$( dirname "$0" )" && pwd )"
cd "$DIR"

sh build-installer.sh
#check for errors
if [ $? -ne 0 ]; then
	cd "$backup"
	echo "Failed"
	exit 1
fi

cd installer
for arch in i386 amd64
do
  cp -p --no-preserve=ownership -t /home/teejee/Dropbox/Public/linux ./conky-manager-latest-${arch}.run
  cp -p --no-preserve=ownership -t /home/teejee/Dropbox/Public/linux ./conky-manager-latest-${arch}.deb
done
cd ..

sh push.sh
#check for errors
if [ $? -ne 0 ]; then
	cd "$backup"
	echo "Failed"
	exit 1
fi

cd "$backup"
