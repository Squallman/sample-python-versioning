FROM python:alpine
ARG WORKSPACE
RUN apk add zip
RUN apk add bash
RUN bash
RUN pip install virtualenv
RUN virtualenv $WORKSPACE/penv

RUN apk update && apk add mysql-client && rm -f /var/cache/apk/*
ENTRYPOINT ["sh"]
CMD ["-c" , "tail -f /dev/null"]