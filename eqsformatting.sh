#!/bin/bash


cat $1.tmp | tr -d " \t\n\r" | sed -e 's/,/;/g' > $1.m && sed -i "1s/^/function dxdt=$1(t,x)\n dxdt=[/" $1.m && echo -e "];\nend" >> $1.m
