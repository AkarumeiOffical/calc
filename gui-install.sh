#!/bin/bash

cd /
cd bin
sudo git clone https://github.com/AkarumeiOffical/calc.git
cd calc
sudo gcc `pkg-config --cflags gtk+-3.0` -o calc-gui calc-gui.c `pkg-config --libs gtk+-3.0` -lm
sudo mv /bin/calc/calc-gui /bin/calc-gui
cd
echo "calc installed successfull."