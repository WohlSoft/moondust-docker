#!/bin/bash
cd ubuntu-18-moondust-build
docker-compose run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw moondust-build-u18 bash
cd ..
