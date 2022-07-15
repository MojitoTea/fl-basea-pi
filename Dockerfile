FROM python:3.8-slim-buster

LABEL NAME="MojitoTea/FLASK-base-api"

LABEL VERSION="1.0"

WORKDIR /app

COPY requirements.txt /app

RUN pip3 install --upgrade pip && pip3 install -r requirements.txt

COPY . .


CMD [ "python3","api.py" ]
