#!/bin/bash

source ~/.bash_profile

cd /etc/yadw
FILES=*

for f in $FILES
do
	yadw full -c $f		&& \
	yadw expire -c $f
done