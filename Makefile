OS		=	$(PWD)/os
JOBS	=	$(shell nproc)

all: link wget ncurses glibc bash linux systemd

link:
	sudo ln -sv usr/bin $(OS)/bin
	sudo ln -sv usr/sbin $(OS)/sbin
	sudo ln -sv usr/lib $(OS)/lib
	sudo ln -sv usr/lib64 $(OS)/lib64

	touch link
	
wget:
	wget -P sources -i sources.txt -nc

ncurses:
	bash scripts/ncurses.sh
	touch ncurses

glibc:
	bash scripts/glibc.sh
	touch glibc

bash:
	bash scripts/bash.sh
	touch bash

linux:
	bash scripts/linux.sh
	touch linux

systemd:
	bash scripts/systemd.sh
	touch systemd

.EXPORT_ALL_VARIABLES:
