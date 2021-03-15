-include docker/.env

CONTAINER ?= php

install:
	cd ./docker && ./install.sh

start:
	cd ./docker && ./start.sh

stop:
	cd ./docker && ./stop.sh

restart: stop start

shell:
	cd ./docker && docker-compose run $(CONTAINER) bash

demo:
	cd ./docker && docker-compose run $(CONTAINER) php -f demo.php
