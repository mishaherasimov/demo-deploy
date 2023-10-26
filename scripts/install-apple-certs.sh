#!/bin/bash

# Install Apple Certificates
FASTLANE_MATCH="bundle exec fastlane match"

APP_IDS=com.untitled.demo-deploy
MATCH_GIT_URL=git@github.com:mishaherasimov/newdrop-apple-certificates.git

$FASTLANE_MATCH appstore --readonly -r $MATCH_GIT_URL --git_branch master -a $APP_IDS --output="ios/certs"