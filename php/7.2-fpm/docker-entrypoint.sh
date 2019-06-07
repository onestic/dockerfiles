#!/bin/sh
set -e

sudo chown -R app:app /var/www
sudo service ssh start

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php-fpm "$@"
fi

exec "$@"