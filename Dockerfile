FROM python:latest
ARG WORKSPACE
RUN pip install virtualenv
RUN virtualenv $WORKSPACE/penv