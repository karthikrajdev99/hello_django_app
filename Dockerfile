FROM python:3.7-buster

# copy source and install dependencies
RUN mkdir /code
COPY . /code
WORKDIR /code
RUN pip install -r requirements.txt

# start server
EXPOSE 8010

#removing host binded to the port  
CMD gunicorn app.wsgi --user www-data --bind :8010 --workers 3 