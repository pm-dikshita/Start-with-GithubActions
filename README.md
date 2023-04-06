# Getting started with GithubActions

This repo focuses on dockerizing a <a href="https://github.com/pm-dikshita/Start-with-GithubActions/blob/main/hello.py"><code>hello-world python application</code></a> locally and then creating a docker image of it. For this purpose, no GitHub actions was used initially. A <a href="https://github.com/pm-dikshita/Start-with-GithubActions/blob/main/Dockerfile"><code>Dockerfile</code></a> is created in order to dockerize the application. Dockerizing an application simply means to pack or wrap our application in a Docker image to be able to run in container(s). Dockerizing involves specifying all that the application needs to be run. THis specification is done in a text document ***"Dockerfile"*** and then build the Docker image using this Dockerfile that can be shared to multiple machines running it.

### Explaining my <a href="https://github.com/pm-dikshita/Start-with-GithubActions/blob/main/Dockerfile"><code>Dockerfile</code></a>

#### - FROM python:3.8-slim-buster:

It pulls official Docker python version 3.8 image based on Debian buster from Docker hub.

#### - ADD hello.py /:

THis step adds our python app "hello.py" to the Docker image

#### - CMD [ "python", "./hello.py" ]:

Once our application is packed in Docker image, we specify the command that docker should run next. Here we want Docker to run command ***python hello.py*** in order to display the output and then exit

