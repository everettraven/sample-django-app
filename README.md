# Django Tutorial Polls App

This repository contains the complete code for the [Django](https://www.djangoproject.com/) project's [tutorial](https://docs.djangoproject.com/en/3.0/intro/tutorial01/) `polls` app. The code should mirror the code you've written at the end of [Part 7](https://docs.djangoproject.com/en/3.0/intro/tutorial07/). 

This app is meant to be used as a reference Django app for several DigitalOcean tutorials, and should not be deployed in production.

----

### Quickstart

Polls is a simple Django app to conduct Web-based polls. For each question, visitors can choose between a fixed number of answers.


1. Make sure you have `pipenv` installed
   
2. Run `pipenv install` from the application root directory

3. Run `pipenv run python3 manage.py makemigrations` and `pipenv run python3 manage.py migrate` to create the polls models.

4. Start the development server and visit http://127.0.0.1:8000/admin/
   to create a poll (you'll need to create a user to log in as).

5. Visit http://127.0.0.1:8000/polls/ to participate in the poll.