#!/bin/bash

. secret-settings

docker run -d \
 --name magbot \
 -e BOT_TOKEN=$BOT_TOKEN \
 -e BACKEND='Slack' \
 -e "TZ=America/New_York" \
 magfest/magbot


# -e BOT_ADMINS=admin@xmpp.local \
# -e BOT_USERNAME=err@xmmp.local \
# -e BOT_PASSWORD=errbotpwd \
