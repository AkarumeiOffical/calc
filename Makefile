all:
	mkdir build
	gcc -Os -pipe -fomit-frame-pointer calc.c -o calc
	mv calc build/calc

gui:
	mkdir build
	gcc -Os -pipe -fomit-frame-pointer `pkg-config --cflags gtk+-3.0` calc-gui.c -o calc-gui `pkg-config --libs gtk+-3.0` -lm
	mv calc-gui build/calc-gui

install:
	cp build/calc /usr/bin/calc

install-gui:
	cp build/calc-gui /usr/bin/calc-gui
