FROM python:3

RUN mkdir /app

COPY requirements.txt /app

RUN pip3 install -r /app/requirements.txt

COPY . /app

WORKDIR /app

EXPOSE 5000

ENV FLASK_APP app

CMD flask run --host 0.0.0.0
