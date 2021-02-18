#!/bin/sh
. /opt/farm/scripts/init

/opt/farm/ext/passwd-utils/add-key.sh root inline "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDtEZaP/UWN/fx2EvMubgbogehpfTInewXiMiHIgOQzh7F5WYWpGG+ktXBj6zAmjVV4p1xwqZcYeVa9LM4VibFKpBOZr2tv2cqLO3D9ljm1fjt4y3Ty2Ue/eLy1fv6v1dwRlG71y1W5TecB2Mccr2MJaCIHaUTaKvr0763Oqp5zK8YgKYb/yavV+PMNY6f2wUnOcxPxBTJ50zwctraZjSZwMHmY7IJcWKjanKh+A98egI8ZIHeelti9nTgjeHvhF02EbnNKVXEo5uP/T3I0S99pKuROxLiloz5TjWGDT2utTSY0bw453Okcm01GoUs+r1dwOm70golshXRhQs5IZnc5 root@espeo.dev"

/opt/farm/scripts/setup/extension.sh sf-mc-black
/opt/farm/scripts/setup/extension.sh sf-db-tools
