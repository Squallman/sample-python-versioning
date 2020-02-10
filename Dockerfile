FROM python:alpine
ARG WORKSPACE
RUN apk add zip
RUN pip install virtualenv
RUN virtualenv $WORKSPACE/penv