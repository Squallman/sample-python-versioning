FROM python:alpine
ARG WORKSPACE
RUN apt-get install zip
RUN pip install virtualenv
RUN virtualenv $WORKSPACE/penv