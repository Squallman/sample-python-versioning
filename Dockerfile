FROM python:alpine
ARG WORKSPACE
RUN pip install virtualenv
RUN virtualenv $WORKSPACE/penv