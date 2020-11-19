#SHELL := bash
#.ONESHELL:
#.SHELLFLAGS := -eu -o pipefail

.PHONY: dev install deploy-staging deploy-production lektor

all: dev

dev:
	export LEKTOR_DEV=1
	lektor server -vvvv

deploy-staging:
	lektor deploy staging

deploy-production:
	lektor deploy production

install:

lektor:

generate-projects: 
	
