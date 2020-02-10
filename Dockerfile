FROM python:3.7-alpine
ARG WORKSPACE
RUN pip install virtualenv
RUN virtualenv --python=python3.7 penv
RUN echo $WORKSPACE