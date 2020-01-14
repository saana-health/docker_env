FROM python:latest

# Set up and activate virtual environment
ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"

WORKDIR /usr/src/app

# Python commands run inside the virtual environment
RUN python -m pip install \
        parse \
        realpython-reader
FROM node:latest

# install chrome for protractor tests
RUN apt-get update

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app/package.json
RUN npm install
RUN npm install -g @angular/cli

# add app
COPY .. /app

# start app
CMD ng serve --host 0.0.0.0
