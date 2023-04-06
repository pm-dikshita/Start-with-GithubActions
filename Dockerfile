FROM python:3.8-slim-buster
ADD hello.py /
CMD [ "python", "./hello.py" ]
