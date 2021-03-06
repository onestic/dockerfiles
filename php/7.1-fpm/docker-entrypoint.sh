#!/bin/sh
set -e

sudo service ssh start
sudo chown -R app:app /var/www

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php-fpm "$@"
fi

exec "$@"
