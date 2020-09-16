FROM python:3.7-buster

# copy source and install dependencies
RUN  apt-get update && apt-get upgrade -y && apt-get install nano

WORKDIR /code

COPY . /code


RUN rm -rf deployment && pip install -r requirements.txt

# start server
EXPOSE 8010

#removing host binded to the port  
CMD gunicorn app.wsgi --user www-data --bind :8010 --workers 3 