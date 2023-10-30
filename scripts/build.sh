#!/bin/bash

bundle exec eas build --local --platform ios --profile production --non-interactive --output="artifact/demo-deploy.ipa"
# bundle exec fastlane upload_build