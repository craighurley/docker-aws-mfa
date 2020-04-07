FROM        python:3.8-alpine3.11
RUN         pip3 install --no-cache-dir \
                aws-mfa==0.0.12
WORKDIR     /workdir
ENV         AWS_PROFILE=default
ENTRYPOINT  [ "aws-mfa" ]
