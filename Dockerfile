# Run aws-mfa in a container
# docker run --rm -it -v $HOME/.aws:/root/.aws craighurley/docker-aws-mfa

FROM        python:3.6-alpine3.9
MAINTAINER  Craig Hurley

WORKDIR     /workdir

ENV         AWS_PROFILE=default

COPY        docker-entrypoint.sh /usr/local/bin/

RUN         chmod +x /usr/local/bin/docker-entrypoint.sh \
            && pip3 install --no-cache-dir \
                aws-mfa==0.0.12

ENTRYPOINT  [ "docker-entrypoint.sh" ]
