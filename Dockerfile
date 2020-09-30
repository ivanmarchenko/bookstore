# RUN adduser -D dockuser
# USER dockuser

# base image
FROM python:3.8-slim

# environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# work directory
WORKDIR /code

# install dependences
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

# copy project from /book/ to /copy/
COPY . /code/
