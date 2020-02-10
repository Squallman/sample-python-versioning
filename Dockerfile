FROM python:alpine
ARG WORKSPACE
RUN apk add zip
RUN apk add bash
RUN bash
RUN pip install virtualenv
RUN virtualenv $WORKSPACE/penv