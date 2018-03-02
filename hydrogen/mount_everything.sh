#!/bin/bash

CURPATH=$(dirname "$0")

# Portable Lenovo T520 (Mint)
#$CURPATH/mount_sshfs.sh t520 192.168.1.31 vince

# VMFarms (Prod)
$CURPATH/mount_sshfs.sh prodapp01 prod-app01 deploy
$CURPATH/mount_sshfs.sh prodapp02 prod-app02 deploy
$CURPATH/mount_sshfs.sh prodapp03 prod-app03 deploy
$CURPATH/mount_sshfs.sh prodworker01 prod-worker01 deploy
$CURPATH/mount_sshfs.sh prodcron01 prod-cron01 deploy
$CURPATH/mount_sshfs.sh proddb01 prod-db01 deploy
$CURPATH/mount_sshfs.sh prodproxy01 prod-proxy01 deploy
$CURPATH/mount_sshfs.sh prodredis01 prod-redis01 deploy

# VMFarms (Staging)
$CURPATH/mount_sshfs.sh stageapp01 stage-app01 deploy
$CURPATH/mount_sshfs.sh stagedb01 stage-db01 deploy
$CURPATH/mount_sshfs.sh stagecron01 stage-cron01 deploy
$CURPATH/mount_sshfs.sh stageredis01 stage-redis01 deploy
$CURPATH/mount_sshfs.sh stageworker01 stage-worker01 deploy
$CURPATH/mount_sshfs.sh stageproxy01 stage-proxy01 deploy

# Berthe
$CURPATH/mount_sshfs.sh berthe berthe.hydrogene.io root
