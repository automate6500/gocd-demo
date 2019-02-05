#!/bin/bash -e
openssl rand -base64 32 > ./trigger.txt
/usr/bin/git add ./trigger.txt
/usr/bin/git commit --all --message "${1:-Push a change to trigger the build. $(cat ./trigger)}"
/usr/bin/git push
