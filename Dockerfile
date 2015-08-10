# magfest-specific errbot setup

FROM errbot/err:python3master

RUN     apt-get -y update && \
        apt-get -y install \
                libxml2-dev \
                libxslt1-dev \
                python-dev && \
        apt-get clean

COPY requirements.txt /err/requirements-extra.txt

RUN runas err /err/virtualenv/bin/pip install -r /err/requirements-extra.txt
