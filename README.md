# WPPConnect Team
## _Wppconnect Docker_

Crie facilmente imagens do Docker com diferentes versões/combinações de linguagens e dependências comuns, para uso no WPPConnect.

## Requisitos

* Docker [3.x](https://www.docker.com/get-started) ou mais recente.

## Instalação

Faça o download da pasta correspondente ao tutorial abaixo para instalar:

### Docker #1: Deploy do Server e Front-end utilizando Contêineres.
- Tutorial no Canal do Youtube: https://www.youtube.com/watch?v=TQJ4ID1vs_c
  - Pasta: [docker-server-front](./docker-server-front)
  
### Docker #2: Configurando um ambiente de desenvolvimento para o WPPConnect.
- Tutorial no Canal do Youtube: https://www.youtube.com/watch?v=kDHbf1TWkBw
  - Pasta: [docker-server-front-dev](./docker-server-front-dev)
    - Utilize os arquivos de configuração do tutorial anterior ([Docker#1](https://www.youtube.com/watch?v=TQJ4ID1vs_c)) e crie pasta "/app" com a versão atual dos repositórios ([wppconnect-server](https://github.com/wppconnect-team/wppconnect-server) e [wppconnect-front](https://github.com/wppconnect-team/wppconnect-frontend)) dentro de suas respectivas aplicações.

### Docker #3:  Subindo tudo com apenas uma linha de comando utilizando o server-cli
- Tutorial no Canal do Youtube: https://www.youtube.com/watch?v=zBmCnPS3JOQ

### Docker #4: Configurando um certificado https para o localhost.
- Tutorial no Canal do Youtube: https://www.youtube.com/watch?v=Mk0sIYJ6peE

### Docker #5: Configurando 5 Servers do o WPPConnect com load balancing utilizando o Nginx.
- Tutorial no Canal do Youtube: https://www.youtube.com/watch?v=nfc-yDrtnMQ
  - Pasta: [docker-server-load-balancing](./docker-server-load-balancing)

## Roadmap (Próximos Vídeos/Tutoriais)
- Docker #6: Configurando o Client PHP e Client Laravel para consumir os endpoints do WPPConnect.
- Docker #7: Usando webhook com Client PHP e MySQL em contêineres.

## Comandos Utilizados

Compila, (re)cria, inicia e anexa um contêiner para um serviço:
``` bash
$ docker-compose up --build
```

Para e remove todos o(s) contêiner(es) e a(s) rede(s):
``` bash
$ docker-compose down
```

Inicia o(s) contêiner(es):
``` bash
$ docker-compose start [nome do serviço...]
```

Para o(s) contêiner(es):
``` bash
$ docker-compose stop [nome do serviço...]
```

Lista as imagens usadas pelos contêineres criados:
``` bash
$ docker images
```

Visualiza os logs dos contêineres.
``` bash
$ docker logs [nome do serviço...]
```

Visualiza as estatística dos contêineres como: consumo de cpu, memória, etc...
``` bash
$ docker stats [nome do serviço....]
```

Exclui todos os processos/serviços do computador local:
``` bash
$ docker rm $(docker ps -a -q) -f  
```

Exclui todas as imagens do computador local:
``` bash
$ docker rmi $(docker images -a -q) -f
```

Remove o cache do builder:
``` bash
$ docker builder prune
```

Remove as redes não utilizadas:
``` bash
$ docker network prune
```

Acesse o [link](https://docs.docker.com/reference/) para ver todos os comandos do Docker.

## Postman
Acesse o [Postman Collection do WPPConnect](https://www.postman.com/hbdbim/workspace/wppconnect-server) com todos os endpoints.