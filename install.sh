#!/bin/bash

cd /
cd bin
sudo wget https://raw.githubusercontent.com/AkarumeiOffical/calc/master/calc.c
sudo gcc -o calc calc.c
cd
echo "calc installed successfull."
