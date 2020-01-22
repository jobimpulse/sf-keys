#!/bin/sh
. /opt/farm/scripts/init

add_root_key() {
	key=`/opt/farm/ext/keys/get-ssh-management-key-content.sh $1`
	/opt/farm/ext/passwd-utils/add-key.sh root inline "$key"
}


add_root_key $HOST

# actual server hostname can differ from configured one
current=`hostname`
if [ "$HOST" != "$current" ]; then
	add_root_key $current
fi


# TODO: detect also Microsoft Azure and Google Cloud (and only these)

# detect Amazon EC2/ECS and install also keys for one of these
if [ -f /etc/image-id ] && grep -q ami-ecs /etc/image-id; then
	add_root_key ecs-null
elif [ -d /sys/class/dmi/id ] && grep -qi amazon /sys/class/dmi/id/* 2>/dev/null; then
	add_root_key .amazonaws.com
fi


/opt/farm/scripts/setup/extension.sh sf-mc-black
/opt/farm/scripts/setup/extension.sh sf-db-tools
