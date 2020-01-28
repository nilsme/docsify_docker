# README

Serving a local folder with docsify in a docker container.

## Use with docker-compose

Replace `<folder_with_docs_on_host>` with your local folder
name in `docker-compose.yml`.

### Build and run container in background

```shell
docker-compose up -d
```

### Docker-compose stop container

```shell
docker-compose stop
```

## Use with docker

### Build image

```shell
docker build -t docs .
```

### Run container in background

Replace `<folder_with_docs_on_host>` with your local folder name.

```shell
docker run \
  --name docs \
  --rm \
  -d \
  -p 3000:3000/tcp \
  --volume <folder_with_docs_on_host>:/srv/docs \
  docs docsify serve .
```

### Docker stop container

```shell
docker stop docs
```

The container will be automatically removed after stop
due to the `--rm` option.

### Access

The served folder is available at `http://localhost:3000`.
