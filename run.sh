#!/bin/bash

CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $CWD

. secret-settings

docker run \
 -e BACKEND='Slack' \
 -e BOT_ADMINS=$BOT_ADMINS \
 -e BOT_TOKEN=$BOT_TOKEN \
 -e "TZ=America/New_York" \
 --volume $CWD/config.py:/err/config.py \
 magfest/magbot \
 err
