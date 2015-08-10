#!/bin/bash

# create a data-only container for magbot's data
docker run -d --name magbot-data --entrypoint /bin/echo magfest/magbot
