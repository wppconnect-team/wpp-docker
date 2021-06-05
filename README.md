# WPPConnect Team
## _Wppconnect Docker_

Easily build Docker images with different versions/combinations of common languages/dependencies, for use on WPPConnect.

## Requirements

* Docker [3.x](https://www.docker.com/get-started) or newer

## Install

Simply download the folder to install:

- Docker #1: Deploy do Server e Front-end utilizando Containers.
  - folder: [docker-server-front](./docker-server-front)

[![WPPConnect!](https://user-images.githubusercontent.com/3454381/120873436-708d7c00-c578-11eb-88db-ecf4af85ab4c.png)](https://youtu.be/TQJ4ID1vs_c)


## Commands

Builds, (re)creates, starts, and attaches to containers for a service.
``` bash
$ docker-compose up --build
```

Stop and remove containers, networks.
``` bash
$ docker-compose down
```

List images used by the created containers.
``` bash
$ docker images
```

View output from containers.
``` bash
$ docker logs [service name...]
```

Please see [all](https://docs.docker.com/reference/) Docker commands.

## Roadmap (PT-BR)
- Docker #2: Configurando um ambiente de desenvolvimento do WPPConnect.
- Docker #3: Configurando o Client PHP e Client Laravel para consumir os endpoints do WPPConnect.
- Docker #4: Usando webhook com Client PHP e MySQL em containers.
- Docker #5: Subindo “N” servidores do WPPConnect com apenas um comando.

## Postman
To learn more about [Postman Collection to WPPConnect](https://www.postman.com/hbdbim/workspace/wppconnect-server).

## License
The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
