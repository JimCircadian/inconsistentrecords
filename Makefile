#SHELL := bash
#.ONESHELL:
#.SHELLFLAGS := -eu -o pipefail

.PHONY: dev install deploy-staging deploy-production

all: dev

dev:
	export LEKTOR_DEV=1
	lektor server -vvvv

deploy-staging:
	lektor deploy staging

deploy-production:
	lektor deploy production

install:
