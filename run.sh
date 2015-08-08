#!/bin/bash

. secret-settings

CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# -d 
docker run -ti \
 --name magbot \
 -e BACKEND='Slack' \
 -e BOT_TOKEN=$BOT_TOKEN \
 -e "TZ=America/New_York" \
 --volume $CWD/config.py:/err/config.py \
 magfest/magbot \
 err


# -e BOT_ADMINS=admin@xmpp.local \
# -e BOT_USERNAME=err@xmmp.local \
# -e BOT_PASSWORD=errbotpwd \
