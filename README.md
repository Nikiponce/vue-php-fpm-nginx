# vue-php-fpm-nginx

etc/hosts
127.0.0.1       portainer.testy.com
127.0.0.1       phpmyadmin.testy.com
127.0.0.1       api.testy.com
127.0.0.1       testy.com


- ./start.sh all -> start all
- ./start.sh stop -> stop all
- ./start.sh base -> start nginx|bbdd|portainer
- ./start.sh start -> start api|front
- ./start.sh api -> start api
- ./start.sh front -> start front



## Nginx --
testy.com
cd nginx_proxy && docker-compose up -b -d

## vue --
testy.com
cd front && docker-compose up -b -d

new vue project
command: /bin/sh -c "yarn global add @vue/cli && vue create . "

exist project
command: /bin/sh -c "yarn && yarn serve"

## api Symfony --
api.testy.com
cd api && docker-compose up -b -d

## bbdd --
phpmyadmin.testy.com
cd bbdd && docker-compose up -b -d

## portainer
portainer.testy.com
cd portainer && docker-compose up --build