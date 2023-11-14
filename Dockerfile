FROM python:3.8
LABEL authors="vl7sha"

RUN addgroup django-group && adduser --ingroup django-group django
USER django:django-group

WORKDIR /app

COPY main ./main
COPY media ./media
COPY parrotsite ./parrotsite
COPY manage.py ./manage.py
COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt