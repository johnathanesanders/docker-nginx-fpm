#!/bin/bash
#"docker container stop php-nginx-run -t 1" only use if we want to wait for it to shutdown using -t as seconds to wait
docker container rm -f php-nginx-run
docker build -t php-nginx . --no-cache
docker run --name php-nginx-run -d -p 80:80 -p 443:443 php-nginx