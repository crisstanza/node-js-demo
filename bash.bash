#!/bin/bash

clear ; cd "$(dirname "$0")"

install() {
	sudo apt install nodejs
	sudo apt install npm
}

version() {
	echo "node: $(node --version)"
	echo "npm: $(npm --version)"
}

init() {
	npm init
}

deps() {
	npm install --save-dev nodemon
	npm install --save express
	npm install --save mysql
	npm install --save body-parser
	npm install --save swagger-jsdoc swagger-ui-express
}

run() {
	node .
}

start() {
	npm start
}

for COMMAND in "$@" ; do "${COMMAND}" ; done
