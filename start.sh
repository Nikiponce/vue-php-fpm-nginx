#!/bin/bash

for i in {1..10}
    do cd nginx_proxy && docker-compose up --build
    sleep 3
done