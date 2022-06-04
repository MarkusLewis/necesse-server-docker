# Necesse Server Docker

An unofficial Docker container for [Necesse's](https://necessegame.com/) Dedicated Server.

## Usage

The most basic usage of this container is through the docker run command, which will get you started with all the defaults.
You can configure the server using environment variables. You can see all the available environment variables in the
[Dockerfile](https://github.com/MarkusLewis/necesse-server-docker/blob/master/Dockerfile#L3).

```
docker run -p 14159:14159 ghcr.io/markuslewis/necesse-server-docker:latest
```

### Mounting worlds

If you want to keep your world data safe, or use an existing world, you should probably mount the saves directory onto your
filesystem. The path for this is `/root/.config/Necesse/saves`.

## Building from source

You can build from source by running the `make build` command. You'll need to download the latest version of the
[Necesse Server](https://necessegame.com/server/) and extract it into a directory called `necesse-server` in this directory.

If the server version has changed, make sure you update it in `create-config.sh`.
