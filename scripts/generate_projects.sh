#!/usr/bin/env bash

source $HOME/.github_api

echo "Pulling and generating projects from $GITHUB_USER"

curl -v -H "Authorization: token ${GITHUB_TOKEN}" https://api.github.com/user/repos

# /repos/{owner}/{repo}/readme
# accept    string  header  Setting to application/vnd.github.v3+json is recommended.
# ref   string  query   The name of the commit/branch/tag. Default: the repository’s default branch (usually master)
#curl \
#  -H "Accept: application/vnd.github.v3+json" \
#  https://api.github.com/repos/octocat/hello-world/readme
