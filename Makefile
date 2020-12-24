#SHELL := bash
#.ONESHELL:
#.SHELLFLAGS := -eu -o pipefail

.PHONY: clean dev install deploy-staging deploy-production lektor

all: dev

clean:
	lektor clean

dev:
	export LEKTOR_DEV=1
	lektor server -vvvv

deploy-staging:
	lektor build
	lektor deploy staging

deploy-production:
	lektor build
	lektor deploy production

generate-projects: 

site:
	lektor build
