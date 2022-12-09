FROM PYTHON:3.8.5-alpine3.13
LABEL maintainer="londonappdeveloper.com"

ENV PYTHONBUFFERED 1

COPY d:/Git Kush/docker/dockerdj/requirements.txt/tmp/requirements.txt
COPY d:/Git Kush/docker/app
WORKDIR d:/Git Kush/docker/app/
EXPOSE 8000

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r/tmp/requirements.txt && \
    rm -rf/tmp && \
    adduser \
        --display-password \
        --no-create-home \
        django user

ENV PATH=""