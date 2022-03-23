## Build step
1. While docker is running, run this command in the directory created when cloning this repository: 

```
docker build -t nginx-example-image .
```
With this command, an image is built to the specifications in the Dockerfile and 'tagged' (the -t flag) as nginx-example-image. The last dot just specifies where to look for the image.

## Run step
2. After the image is built, run the container with this command: 

```
docker run -d --rm -p 8080:80 --name nginx-container nginx-example-image
```

Here, docker spins up a container with the image previously created. Breakdown of the command: 
`-d` means run the container in detached mode, so all the log information is not displayed in the command line application used to run docker. 

`--rm` means to auto-remove the docker container if stopped using the docker stop ; otherwise, you would need to stop a docker container and then remove it.

`-p` means published port. the first number specifies which port is accessible from outside the container, while the second number maps it to an exposed port (see the dockerfile)

`--name` optional human-readable name to manage the container; if not set, docker will automatically name the container. in this example we call the container 'nginx-container'

at the end of the docker run command, we specify which docker image to use to run within the container. 


## Viewing the page served 

visiting http://localhost:8080 on any browser while the container is running should display a default nginx works page. 

the custom html in this repository copied into the nginx container and displayed when docker is running should be viewable on http://localhost:8080/index.html
