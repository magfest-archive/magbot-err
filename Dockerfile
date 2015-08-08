# magfest-specific errbot setup

FROM errbot/err:python3master

RUN runas err /err/virtualenv/bin/pip install slackclient
