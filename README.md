# README

## Usage

Build the image.

```shell
docker build -t docs .
```

Run the image and mount volume from host. Replace
`<folder_with_docs_on_host>` with your local folder name.

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

## Features

> TODO
