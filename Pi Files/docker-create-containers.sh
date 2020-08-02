#!/bin/bash

docker create \
	--name=calibre-web \
	-e PUID=1000 \
	-e PGID=1000 \
	-e TZ=Europe/London \
	-e DOCKER_MODS=linuxserver/calibre-web:calibre \
	-p 8083:8083 \
	-v /srv/dev-disk-by-label-Disk1/Calibre/config:/config \
	-v /srv/dev-disk-by-label-Disk1/Calibre/books:/books \
	--restart always \
	linuxserver/calibre-web
	
docker create \
	--name=transmission \
	-e PUID=1000 \
	-e PGID=1000 \
	-e TZ=Europe/London \
	-e TRANSMISSION_WEB_HOME=/combustion-release/ \
	-e USER=btadmin \
	-e PASS=Swordfish \
	-p 9091:9091 \
	-p 51413:51413 \
	-p 51413:51413/udp \
	-v /srv/dev-disk-by-label-Disk1/Transmission/config:/config \
	-v /srv/dev-disk-by-label-Disk1/Transmission/downloads:/downloads \
	-v /srv/dev-disk-by-label-Disk1/Transmission/watch:/watch \
	--restart always \
	linuxserver/transmission
		
docker create \
	--name=resilio-sync \
	-e PUID=1000 \
	-e PGID=1000 \
	-e TZ=Europe/London \
	-e UMASK_SET=022 \
	-p 8888:8888 \
	-p 55555:55555 \
	-v /srv/dev-disk-by-label-Disk1/Storage/ResilioSync/config:/config \
	-v /srv/dev-disk-by-label-Disk1/Storage/ResilioSync/downloads:/downloads \
	-v /srv/dev-disk-by-label-Disk1/Storage/ResilioSync/sync:/sync \
	--restart always \
	linuxserver/resilio-sync

docker create \
	--name plex \
	--network=host \
	-e PUID=1000 \
	-e PGID=1000 \
	-e version=DOCKER \
	-e UMASK_SET=022 \
	-e TZ=Europe/London \
	-e PLEX_CLAIM=claim-5nc3NaXMWsvxo5f1o2yw \
	-p 32400:32400 \
	-p 1900:1900/udp \
	-p 3005:3005 \
	-p 5353:5353/udp \
	-p 8324:8324 \
	-p 32410:32410/udp \
	-p 32412:32412/udp \
	-p 32413:32413/udp \
	-p 32414:32414/udp \
	-p 32469:32469 \
	-v /srv/dev-disk-by-label-Disk1/Plex/config:/config \
	-v /srv/dev-disk-by-label-Disk1/Plex/transcode:/transcode \
	-v /srv/dev-disk-by-label-Disk1/Plex/data:/data \
	--restart always \
	linuxserver/plex