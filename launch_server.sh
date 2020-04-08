#! /bin/bash
(gunicorn mysite.wsgi --user www-data --bind 127.0.0.1:8010 --workers 3) & nginx -g "daemon off;"