FROM python:stretch
ENV PYTHONUNBUFFERED 1
ADD . /usr/src/flask
WORKDIR /usr/src/flask
RUN pip install -r requirements.txt
RUN apt-get -y update && apt-get install -y postgresql-client
EXPOSE 8080
# CMD python run.py
