FROM python:3.8-slim-buster
ARG WORKSPACE=someuser
RUN pip install virtualenv
RUN virtualenv --python=python3.7 $WORKSPACE/penv