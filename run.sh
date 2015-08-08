#!/bin/bash

. secret-settings

CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

docker run -d \
 --name magbot \
 -e BACKEND='Slack' \
 -e BOT_TOKEN=$BOT_TOKEN \
 -e "TZ=America/New_York" \
 --volume $CWD/config.py:/err/config.py \
 magfest/magbot \
 err
