# vue-php-fpm-nginx

etc/hosts

127.0.0.1       portainer.testy.com
127.0.0.1       phpmyadmin.testy.com
127.0.0.1       api.testy.com
127.0.0.1       testy.com


## vue --
testy.com
cd front && docker-compose up --build

new vue project
command: /bin/sh -c "yarn global add @vue/cli && vue create . -y"

exist project
command: /bin/sh -c "yarn && yarn serve"

## api Symfony --
api.testy.com
cd api && docker-compose up --build

## bbdd --
phpmyadmin.testy.com
cd bbdd && docker-compose up --build

## portainer
portainer.testy.com
cd portainer && docker-compose up --build