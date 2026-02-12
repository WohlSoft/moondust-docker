#!/bin/bash

cd $1
echo "Clean-up..."
docker-compose down -v --rmi all --remove-orphans
echo "Build..."
docker-compose build
cd ..
