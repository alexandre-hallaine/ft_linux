# ft_linux

## create the vm and boot it
first you have to create you'r vm  
we use a kali because you can download easily a vm image and boot it  
you can download our version of kali [here](torrent)

then you need to make a hard disk with 30 GB (search how to make it :))  

import the kali image in your vm (with the add button) and add the hard disk
we recommend you to change how many cores you want to use and how much ram you want to use (we use 4 cores and 8 GB of ram)

then you can boot the vm and login with the default password (`kali`)

## install the base system
you have just to run the script (it gonna make the partition, install the base system and the bootloader)  
the partition gonna be in `/dev/sdb`, if you want to change it you have to change the env in `base/partition.sh`
```bash
bash install.sh
```
