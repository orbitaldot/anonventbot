include .env

name=anonventbot

PM2=./node_modules/.bin/pm2

.PHONY: install
install:
	npm install

.PHONY: start
start:
	$(PM2) start bot.js --name ${name}

.PHONY: stop
stop:
	$(PM2) stop ${name}

.PHONY: restart
restart:
	$(PM2) restart ${name}
