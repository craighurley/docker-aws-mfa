FROM        python:3.7-alpine3.11

WORKDIR     /workdir

ENV         AWS_PROFILE=default

COPY        docker-entrypoint.sh /usr/local/bin/

RUN         chmod +x /usr/local/bin/docker-entrypoint.sh \
            && pip3 install --no-cache-dir \
                aws-mfa==0.0.12

ENTRYPOINT  [ "docker-entrypoint.sh" ]
