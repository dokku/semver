# semver-generator

Github Action and golang binary for generating a semver version

## Requirements

- Golang
- Docker (optional)

## Usage

```shell
# build it
docker build --progress plain -t semver .

# run it with arguments
docker run --rm semver --input 0.1.2 --bump patch

# run it with environment variables
docker run --rm -e GITHUB_VERSION_INPUT=0.1.2 -e GITHUB_VERSION_BUMP=patch semver
```
