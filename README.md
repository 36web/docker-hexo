# hexo-cli

## Usage

### Create a new Hexo folder

```shell
docker run --rm -v /path/to/your/blog:/blog 36web/hexo init .
```

### Run server

```shell
docker run --rm -p 4000:4000 -v /path/to/your/blog:/blog 36web/hexo server
```

### Generate static files

```shell
docker run --rm -v /path/to/your/blog:/blog 36web/hexo generate
```

