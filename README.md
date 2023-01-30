# Example application in Python and Django

## Description
This application is developed in python using Django as framework. The only use it has is to serve as an example for testing with the SRE tools in the repository:

https://github.com/diazalonsodavid/app-project-devops

## Requirements
* Python 3.x
* Docker

## Installation
1. Clone the repository
git clone https://github.com/username/project_name.git

markdown
Copy code
2. Build the Docker image
docker build -t project_name .

markdown
Copy code
3. Run the Docker container
docker run -p 8000:8000 project_name

csharp
Copy code
4. Visit http://localhost:8000 in your web browser to access the application

## Usage
Instructions for using the application.

## Dockerfile
Use an official Python runtime as the base image
FROM python:3.x-slim-buster

Set the working directory to /app
WORKDIR /app

Copy the current directory contents into the container at /app
COPY . /app

Install the required packages
RUN pip install -r requirements.txt

Set environment variables
ENV PYTHONUNBUFFERED=1

Run the command to start the Django development server
CMD python manage.py runserver 0.0.0.0:8000

