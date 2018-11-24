#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

if [ "$(docker ps -a | grep gallery-apache-app)" ]; then
	docker stop gallery-apache-app
	docker rm gallery-apache-app
fi

docker run -dit \
--name gallery-apache-app \
-p 8080:80 \
-v $DIR/../apache/example.conf:/etc/apache2/sites-enabled/example.conf:ro \
-v $DIR/../gallery/:/var/www/gallery/:ro \
gallery-apache sleep infinity

docker exec -it gallery-apache-app /bin/bash -c "\
rm /etc/apache2/sites-enabled/000-default.conf; \
apachectl start || apachectl restart \
"

echo 'This can be tested on http://localhost:8080'
