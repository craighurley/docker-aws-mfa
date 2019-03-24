# docker-aws-mfa

Run aws-mfa in a container.

## Running

Run aws-mfa in a container:

```sh
# AWS_PROFILE is set to default within the container
docker run --rm -it -v $HOME/.aws:/root/.aws craighurley/docker-aws-mfa

# AWS_PROFILE is set to match the hosts value
docker run --rm -it -v $HOME/.aws:/root/.aws -e AWS_PROFILE craighurley/docker-aws-mfa
```

Optional: create an alias for the container:

```sh
alias aws='docker run --rm -it -v $HOME/.aws:/root/.aws -e AWS_PROFILE craighurley/docker-aws-mfa'
```

## Links

- <https://github.com/broamski/aws-mfa>
- <https://alpinelinux.org>
- <https://docs.docker.com>
