#!/bin/bash

if [[ $1 == "theme" ]]; then
	omf install budspencer
	omf theme budspencer
	omf reload
	exit 0
fi

read -p "Ok to be root? [yN]" yn

if [[ "$yn" == "y" ]]; then
	if [ ! grep "^deb     http://deb.debian.org/debian buster main" /etc/apt/sources.list] ; then
		echo "deb     http://deb.debian.org/debian buster main" >> /etc/apt/sources.list
 	fi	

	sudo apt-get update
	sudo apt-get install fish
else
	exit 0
fi

curl -L https://get.oh-my.fish | fish


