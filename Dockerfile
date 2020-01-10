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
