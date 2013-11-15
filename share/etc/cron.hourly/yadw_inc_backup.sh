#!/bin/bash

source ~/.bash_profile

cd /etc/yadw
FILES=*

for f in $FILES
do
	yadw inc -c $f     && \
	yadw verify -c $f  && \
	yadw expire -c $f
done
