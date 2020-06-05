#!/usr/bin/env bash

set -euxo pipefail

case $1 in
	start )
		docker-compose up --abort-on-container-exit
		;;
	stop )
		docker-compose down
		;;
	cron )
		docker-compose exec --user www-data nextcloud php cron.php
		;;
esac
