# Getting started with Dockerizing app

This repo focuses on dockerizing a <a href="https://github.com/pm-dikshita/Start-with-GithubActions/blob/main/hello.py"><code>hello-world python application</code></a> locally and then creating a docker image of it. For this purpose, no GitHub actions was used initially. A <a href="https://github.com/pm-dikshita/Start-with-GithubActions/blob/main/Dockerfile"><code>Dockerfile</code></a> is created inside the folder itselff where the python script is in order to dockerize the application. Dockerizing an application simply means to pack or wrap our application in a Docker image to be able to run in container(s). Dockerizing involves specifying all that the application needs to be run. THis specification is done in a text document ***"Dockerfile"*** and then build the Docker image using this Dockerfile that can be shared to multiple machines running it.

*********************

### Explaining my <a href="https://github.com/pm-dikshita/Start-with-GithubActions/blob/main/Dockerfile"><code>Dockerfile</code></a>


#### - FROM python:3.8-slim-buster:

It pulls base image, in our case official Docker python version 3.8 image based on Debian buster from Docker hub.

#### - ADD hello.py /:

THis step adds our python app "hello.py" to the Docker image

#### - CMD [ "python", "./hello.py" ]:

Once our application is packed in Docker image, we specify the command that docker should run next. Here we want Docker to run command ***python hello.py*** in order to display the output and then exit

*********************


### Next steps:

Once the Dockerfile is created, now we need to build the docker image:

1. Build the docker image with the command below inside the folder:

```
docker build -t python-hello .
```

- This command will build the image python-hello using Dockerfile from the same directory with a tagging the image using "-t". 

- ***"."*** refers to the Dockerfile location as the docker build context.

2. Run the created image with the command:

```
docker run python-hello
```
This command will return the expected output as shown in the image below:

<img src="https://github.com/pm-dikshita/Start-with-GithubActions/blob/main/images/docker_run.png">

In order to check the docker images, run:

```
docker images
```
<img src="https://github.com/pm-dikshita/Start-with-GithubActions/blob/main/images/docker-images.png">
