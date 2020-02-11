FROM python:alpine
ARG WORKSPACE
RUN apk add zip
RUN apk add bash

RUN ls -la $WORKSPACE

RUN echo $'[repo] \n\
name            = YUM Repository \n\
baseurl         = https://example.com/packages/ \n\
enabled         = 1 \n\
gpgcheck        = 0' > $WORKSPACE/my.cfg

RUN bash
RUN pip install virtualenv
RUN virtualenv $WORKSPACE/penv
