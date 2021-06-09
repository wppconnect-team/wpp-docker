# WPPConnect Team
## _Wppconnect Docker_

Easily build Docker images with different versions/combinations of common languages/dependencies, for use on WPPConnect.

## Requirements

* Docker [3.x](https://www.docker.com/get-started) or newer

## Install

Simply download the folder to install:

- Docker #1: Deploy do Server e Front-end utilizando Containers.
  - folder: [docker-server-front](./docker-server-front)

[![WPPConnect!](https://user-images.githubusercontent.com/3454381/121362579-92865600-c90c-11eb-9b21-d8b445889eb1.jpeg)](https://youtu.be/TQJ4ID1vs_c)

---

- Docker#2: Configurando um ambiente de desenvolvimento para o WPPConnect.
  - folder: [docker-server-front-dev](./docker-server-front-dev)
  - **IMPORTANT: You need to create the folder "/app" with the current version (wppconnect-server and wppconnect-front)**

[![WPPConnect!](https://user-images.githubusercontent.com/3454381/121362642-9e721800-c90c-11eb-9c40-a314f50f69be.jpeg)](https://www.youtube.com/watch?v=kDHbf1TWkBw)

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
- Docker #3: Configurando o Client PHP e Client Laravel para consumir os endpoints do WPPConnect.
- Docker #4: Usando webhook com Client PHP e MySQL em containers.
- Docker #5: Subindo “N” servidores do WPPConnect com apenas um comando.

## Postman
To learn more about [Postman Collection to WPPConnect](https://www.postman.com/hbdbim/workspace/wppconnect-server).

## License
The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
