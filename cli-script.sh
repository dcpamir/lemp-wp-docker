#!/bin/bash

if [ "$2" == "enable" ]; then
 docker compose start
 echo "Open $1 in any browser to view it or go to http://localhost:8080."
 exit 0
elif [ "$2" == "disable" ]; then
 docker compose stop
 echo "$1 has been disabled."
 exit 0
fi

if [ "$2" == "delete" ]; then
 docker compose down -v
 sudo sed -i "/$1/d" /etc/hosts
 exit 0
fi

if ! docker --version; then
  echo "Installing Docker"
  apt-get update
  apt-get install -y docker
fi

if ! docker compose version; then
  echo "Installing Docker Compose"
  apt-get update
  apt-get install -y docker-compose-plugin
fi

if [ -z "$1" ]; then
  echo "Please provide site name"
  exit 1
fi

echo "127.0.0.1:8080    $1  www.$1" >> /etc/hosts

echo "Creating LEMP stack in docker for wordpress"
docker compose up -d

echo "Site is up and healthy."
echo "Open $1 in any browser to view it or go to http://localhost:8080."