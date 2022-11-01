FROM python:3.10

RUN mkdir /code
WORKDIR /code

ENV NAME_USER_DJANGO_APP Nivedit
RUN pip install --upgrade pip

COPY . /code/
RUN pip install -r requirements.txt
RUN python manage.py makemigrations
RUN python manage.py migrate

EXPOSE 8000

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]