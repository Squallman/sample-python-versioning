FROM python:3.7-slim-buster
ARG WORKSPACE
RUN pip install virtualenv
RUN virtualenv --python=python3.7 $WORKSPACE/penv