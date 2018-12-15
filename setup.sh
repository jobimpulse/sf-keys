#!/bin/sh
. /opt/farm/scripts/init

/opt/farm/scripts/setup/extension.sh sf-passwd-utils

key=`/opt/farm/ext/keys/get-ssh-management-key-content.sh $HOST`
/opt/farm/ext/passwd-utils/add-key.sh root inline "$key"

/opt/farm/scripts/setup/extension.sh sf-mc-black
/opt/farm/scripts/setup/extension.sh sf-db-tools
