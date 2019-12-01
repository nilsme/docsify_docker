# README

Serving a local folder with docsify in a docker container.

## Usage

### Build image

```shell
docker build -t docs .
```

### Run image

Replace `<folder_with_docs_on_host>` with your local folder name.

```shell
docker run \
  --name docs \
  --rm \
  -i \
  -d \
  -p 3000:3000/tcp \
  --volume <folder_with_docs_on_host>:/srv/docs \
  docs docsify serve .
```

### Access

The served folder is available at `http://localhost:3000`.

### Stop container

```shell
docker stop docs
```

The container will be automatically removed after stop
due to the `--rm` option.
