#!/bin/bash

case "$1" in
        "all")
            echo "all"
            cd ./nginx_proxy; docker-compose up --build -d; echo 'start proxy'
            cd ../bbdd; docker-compose up --build -d; echo 'start bbdd'
            cd ../api; docker-compose up --build -d; echo 'start api'
            cd ../front; docker-compose up --build -d; echo 'start front'
            cd ../portainer; docker-compose up --build -d; echo 'start portainer'
            ;;

        "stop")
            echo "stop"
            cd ./nginx_proxy; docker-compose down; echo 'start proxy'
            cd ../bbdd; docker-compose down; echo 'start bbdd'
            cd ../api; docker-compose down; echo 'start api'
            cd ../front; docker-compose down; echo 'start front'
            cd ../portainer; docker-compose down; echo 'start portainer'
            ;;

        "base")
            echo "base"
            cd ./nginx_proxy; docker-compose up --build -d; echo 'start proxy'
            cd ../bbdd; docker-compose up --build -d; echo 'start bbdd'
            cd ../portainer; docker-compose up --build -d; echo 'start portainer'
            ;;

        "start")
            echo "start"
            cd ../api; docker-compose up --build -d; echo 'start api'
            cd ../front; docker-compose up --build -d; echo 'start front'
            ;;

        "api")
            echo "api"
            cd ../api; docker-compose up --build -d; echo 'start api'
            cd ../front; docker-compose up --build -d; echo 'start front'
            ;;

        "front")
            echo "front"
            cd ../api; docker-compose up --build -d; echo 'start api'
            cd ../front; docker-compose up --build -d; echo 'start front'
            ;;
        *)
            echo $"Usage: $0 {all|stop|base|start|api|front}"
            exit 1
esac
