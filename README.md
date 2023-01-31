# WPPConnect Team
## _Wppconnect Docker_

Crie facilmente imagens do Docker com diferentes versões/combinações de linguagens e dependências comuns, para uso no WPPConnect.

## Nossos canais online

[![Discord](https://img.shields.io/discord/844351092758413353?color=blueviolet&label=Discord&logo=discord&style=flat)](https://discord.gg/JU5JGGKGNG)
[![Telegram Group](https://img.shields.io/badge/Telegram-Group-32AFED?logo=telegram)](https://t.me/wppconnect)
[![WhatsApp Group](https://img.shields.io/badge/WhatsApp-Group-25D366?logo=whatsapp)](https://chat.whatsapp.com/LJaQu6ZyNvnBPNAVRbX00K)
[![YouTube](https://img.shields.io/youtube/channel/subscribers/UCD7J9LG08PmGQrF5IS7Yv9A?label=YouTube)](https://www.youtube.com/c/wppconnect)

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

### Docker #5: Configurando 5 Servers do WPPConnect com load balancing utilizando o Nginx.
- Tutorial no Canal do Youtube: https://www.youtube.com/watch?v=nfc-yDrtnMQ
  - Pasta: [docker-server-load-balancing](./docker-server-load-balancing)

### Docker #6: Configurando o Server do WPPConnect com Chatwoot utilizando o Nginx.
- Tutorial no Canal do Youtube: https://www.youtube.com/watch?v=00616mTid-M
  - Pasta: [docker-server-chatwoot](./docker-server-chatwoot)

### Docker #7: Utilizando o Client PHP + MySQL + phpMyAdmin + Nginx com o Server WPPConnect.
- Tutorial no Canal do Youtube: https://www.youtube.com/watch?v=o_TBIyxFbNI
  - Pasta: [docker-server-php-mysql-dev](./docker-server-php-mysql-dev)

## Roadmap (Próximos Vídeos/Tutoriais)
- Docker #8: Configurando o Client Laravel para consumir os endpoints do WPPConnect.

## Comandos Utilizados

Compila, (re)cria, inicia e anexa um contêiner para um serviço:
``` bash
$ docker-compose up --build --no-start
```
Para e remove todos o(s) contêiner(es) e a(s) rede(s):
``` bash
$ docker-compose down
```

Inicia o(s) contêiner(es):
``` bash
$ docker-compose start [nomedoserviço...]
```

Para o(s) contêiner(es):
``` bash
$ docker-compose stop [nomedoserviço...]
```

Lista as imagens usadas pelos contêineres criados:
``` bash
$ docker images
```

Visualiza os logs dos contêineres.
``` bash
$ docker logs [nomedoserviço...]
```

Visualiza as estatística dos contêineres como: consumo de cpu, memória, etc...
``` bash
$ docker stats [nomedoserviço....]
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
Acesse o [Postman Collection do WPPConnect](https://documenter.getpostman.com/view/9139457/TzshF4jQ) com todos os endpoints.
