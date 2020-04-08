FROM python:3.7-buster

COPY . /Django_App/sample-django-app

RUN pip install gunicorn

RUN pip install django

RUN python -m pip install djangorestframework

RUN apt-get update && apt-get install -y nginx

COPY ./nginx.conf /etc/nginx/sites-available/default

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

RUN chown -R www-data:www-data /Django_App

WORKDIR /Django_App/sample-django-app

RUN python3 manage.py makemigrations

RUN python3 manage.py migrate

RUN chmod +x ./launch_server.sh

EXPOSE 8020
STOPSIGNAL SIGTERM

CMD ["./launch_server.sh"]
