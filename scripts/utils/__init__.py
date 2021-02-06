import configparser
import logging
import os

from github import Github


def github_conn(filename="$HOME/.github_api"):
    config = configparser.ConfigParser()
    config.read(os.path.expandvars(filename))

    token = config['api']['token']
    return Github(token)
