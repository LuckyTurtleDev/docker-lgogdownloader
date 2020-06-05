#!/bin/bash

if [ -z "$GOG_EMAIL" ]
then
	echo "ERROR: GOG_EMAIL not set"
	exit 1
fi
if [ -z "$GOG_PASSWORD" ]
then
	echo "ERROR: GOG_PASSWORD not set"
	exit 1
fi

while :
do
	/usr/local/bin/login
	lgogdownloader --directory=/home/user/downloads --save-config
	/usr/bin/lgogdownloader $@
	if [ -z "$INTERVALL" ]
  then
		exit
	fi
	echo "sleep for ${INTERVALL}"
	sleep ${INTERVALL}
done
