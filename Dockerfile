FROM python:stretch

COPY . /APP
WORKDIR /APP

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT [ "gunicorn","-b",":8080", "main:APP" ]