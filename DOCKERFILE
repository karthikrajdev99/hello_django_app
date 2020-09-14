FROM python:3.7-buster

# copy source and install dependencies
RUN mkdir /code
COPY . /code
WORKDIR /code
RUN pip install -r requirements.txt

# start server
EXPOSE 8010
CMD gunicorn app.wsgi --user www-data --bind 0.0.0.0:8010 --workers 3 