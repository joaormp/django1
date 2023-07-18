FROM python:3.10-bullseye AS builder

# ENV PYTHONUNBUFFERED=1 secutiry reasons to be clarified in future

#RUN apk update && apk add bash

WORKDIR /app

COPY requirements.txt /app

RUN pip install -r requirements.txt

COPY ./app /app

ENTRYPOINT [ "python3" ]

EXPOSE 8000

CMD [ "manage.py", "runserver", "0.0.0.0:8000"]
