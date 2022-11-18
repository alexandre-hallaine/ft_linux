OS			=	$(PWD)/os
MAKEFLAGS	=	6

all: link wget ncurses glibc bash linux

link:
	sudo ln -sv usr/bin $(OS)/bin
	sudo ln -sv usr/sbin $(OS)/sbin
	sudo ln -sv usr/lib $(OS)/lib
	sudo ln -sv usr/lib64 $(OS)/lib64

	touch link
	
wget:
	wget -P sources -i sources.txt -nc

ncurses:
	sudo -E bash scripts/ncurses.sh
	touch ncurses

glibc:
	sudo -E bash scripts/glibc.sh
	touch glibc

bash:
	sudo -E bash scripts/bash.sh
	touch bash

linux:
	sudo -E bash scripts/linux.sh
	touch linux

.EXPORT_ALL_VARIABLES:
