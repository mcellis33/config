#!/bin/zsh
rm -rf lgs;
mkdir lgs;
for i in `docker ps | awk '{print $1}' | grep -v CONTAINER`;
	docker logs $i > lgs/$i;