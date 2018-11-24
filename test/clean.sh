#!/bin/bash

if [ "$(docker ps -a | grep gallery-apache-app)" ]; then
	docker stop gallery-apache-app
	docker rm gallery-apache-app
fi

if [ -z "$(docker images -q gallery-apache 2> /dev/null)" ]; then
	docker rmi gallery-apache
fi
