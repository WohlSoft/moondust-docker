A set of custom docker images used in the CI with the Moondust Project and others for convenience.

# Developer notes
Type these command at each container's directory.

## Build an image:
```bash
docker-compose build
```

## Clean-up everything to build from the scratch
If something went wrong, just burn everything and build it from the ground up!
```bash
docker-compose down -v --rmi all --remove-orphans
```

## Publishan image
When pubinshing an update, need to type this:
```bash
docker push ghcr.io/wohlsoft/<name-of-service>:latest
```

## Before to publish, need to login
- Get a classic GitHub's access tocken first with the permission to "packages write" and "packages delete". Make it being non-expiring.
- Remember the tocken.
- Login `docker login ghcr.io -u <your-username>` with the command and pasting token as a password
- And now, do publishing or deleting of containers.


## Using published image in the CI
When writing a YML file for the CI thing, you can add the `container` field that will contain the name of the container in next format:
```yml
container: "<name of container>:latest",
```

Example:
```yml
container: "ghcr.io/wohlsoft/wohlsoft-ci-ubuntu2404-qt5:latest",
```
