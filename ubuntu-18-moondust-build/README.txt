This is an image of Ubuntu 18.04 with installed stuff to use for various local
maintenace needs. It can be downloaded using next command:

```
docker pull ghcr.io/wohlsoft/wohlsoft-ci-ubuntu1804-moondust-build:latest
```

To run the image and do the stuff inside it:
```
docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw wohlsoft-ci-ubuntu1804-moondust-build -it bash
```


To clean it away, use command:
```
docker-compose down -v --rmi all --remove-orphans
```

And to rebuild:
```
docker-compose build --force-rm --no-cache
```


To send an update after rebuild:
```
docker push ghcr.io/wohlsoft/wohlsoft-ci-ubuntu1804-moondust-build:latest
```
