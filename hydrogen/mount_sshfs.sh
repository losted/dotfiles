#/bin/bash

# This is fucking homemade, with love and a lot of hair
# To unmount: fusermount -u /path/to/mount

###### CONFIG ######
SHARENAME="$1"
REMOTE="$2"
REMOTEUSER="$3"

###### SETUP ######
CURRENTUSER=$(whoami)
CURRENTGROUP=$(id -gn)


if [ $# -ne 3 ]
then
    	echo "Usage: $0 [sharename] [remote-addr] [remote-user]"
        echo "Mount a sshfs remote share"
        exit 1
fi


mkdir -p ~/ssh_mounts/$SHARENAME

if [ ! "$(ls -A ~/ssh_mounts/$SHARENAME 2>/dev/null)" ]; then
	echo "Creating /remote directory...Please provide sudo password:"
	sudo mkdir -p /remote
	sudo chown -R $CURRENTUSER:$CURRENTGROUP /remote
fi

###### Mounting SSHFS ######
if [ "$(ls -A ~/ssh_mounts/$SHARENAME 2>/dev/null)" ]; then
     	echo "$SHARENAME is already mounted"
else
	echo "Mounting $SHARENAME..."

	sshfs $REMOTEUSER@$REMOTE:/ ~/ssh_mounts/$SHARENAME/

	if [ "$(ls -A /remote/$SHARENAME 2>/dev/null)" ]; then
		echo "Symlink already exists"
	else
        	echo "Creating symlink to /remote/$SHARENAME..."
		ln -s ~/ssh_mounts/$SHARENAME /remote/$SHARENAME
    	fi

    	echo "All Done!"
fi

