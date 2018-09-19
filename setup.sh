#!/bin/sh
. /opt/farm/scripts/init


echo "preparing ssh key"
FULLKEY=`/opt/farm/ext/keys/get-ssh-management-key-content.sh $HOST`

if [ ! -f /root/.ssh/authorized_keys ] || ! grep -q "$FULLKEY" /root/.ssh/authorized_keys; then
	echo "setting up root ssh key"
	mkdir -p /root/.ssh
	echo "$FULLKEY" >>/root/.ssh/authorized_keys
fi


/opt/farm/scripts/setup/extension.sh sf-mc-black
/opt/farm/scripts/setup/extension.sh sf-db-tools
