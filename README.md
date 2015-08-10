# Magfest-specific bot based on errbot
EXPERIMENTAL

This repo contains just enough to run errbot on docker with the slack plugin.

## Install

Requires a recent version of docker.

```
./build.sh
cp secret-settings.template secret-settings
./install.sh
```

Edit secret-settings and add your specific Slack API authentication tokens

## Run
```
./run.sh
```

That's it!

There's a supervisor.conf file here you can use with supervisor in order to have this thing start on system start.
