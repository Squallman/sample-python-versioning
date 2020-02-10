FROM python:3.7-latest
ARG WORKSPACE=someuser
RUN pip install virtualenv
RUN virtualenv --python=python3.7 $WORKSPACE/penv