ARG WORKSPACE
FROM python:3.7-alpine
RUN pip install virtualenv
RUN virtualenv --python=python3.7 penv
RUN echo WORKSPACE