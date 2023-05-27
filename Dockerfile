FROM python:3
ENV PYTHONDONTWRITEBYCODE 1
ENV PYTHONBUFFERED 1

RUN mkdir /hackernews
WORKDIR /hackernews
COPY requirements.txt /hackernews/
RUN pip install -r requirements.txt

COPY ./hackernews/
CMD python manage.py runserver 0.0.0.0:8080
