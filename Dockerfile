# magfest-specific errbot setup

FROM rroemhild/err

COPY requirements.txt /app/requirements-extra.txt
RUN /app/venv/bin/pip3 install --no-cache-dir -r /app/requirements-extra.txt
