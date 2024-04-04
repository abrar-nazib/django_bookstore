# Pull the base image
FROM python:3.10.0-alpine

# Set Environment Variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the Work Directory
WORKDIR /code

# Install dependencies
COPY ./requirements.txt .
RUN python -m pip install -r requirements.txt

# Copy Project
COPY . .

