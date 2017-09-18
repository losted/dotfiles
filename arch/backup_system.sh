#!/bin/bash

sudo rsync -aAXhP / --exclude={"/dev/*","/backup/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /mnt/NAS/backup
# sudo rsync -aAXhv / --exclude={"/dev/*","/backup/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /mnt/NAS/backup

# sudo mount -t cifs -o user=luc,password=lights,iocharset=utf8,noperm //192.168.1.131/nfs/luc /mnt/NAS