OS		=	$(PWD)/os
JOBS	=	$(shell nproc)

all: linux ncurses glibc bash coreutils
	
wget:
	wget -P sources -i sources.txt -nc

link:
	sudo ln -sv usr/bin $(OS)/bin
	sudo ln -sv usr/sbin $(OS)/sbin
	sudo ln -sv usr/lib $(OS)/lib
	sudo ln -sv usr/lib64 $(OS)/lib64

	touch link

linux: wget link
	bash scripts/linux.sh
	touch linux

ncurses: wget link
	bash scripts/ncurses.sh
	touch ncurses

glibc: wget link
	bash scripts/glibc.sh
	touch glibc

bash: wget link
	bash scripts/bash.sh
	touch bash

coreutils: wget link
	bash scripts/coreutils.sh
	touch coreutils

systemd: wget link
	bash scripts/systemd.sh
	touch systemd

clean:
	sudo rm -rf sources
	sudo rm -rf $(OS)/*
	rm -f link linux systemd ncurses glibc bash coreutils

.EXPORT_ALL_VARIABLES:
