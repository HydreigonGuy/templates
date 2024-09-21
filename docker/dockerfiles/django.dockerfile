FROM python:latest

EXPOSE 8000

WORKDIR /app

RUN pip install --upgrade pip
COPY requirements.txt /app
RUN pip install -r requirements.txt --no-cache-dir

COPY ./src/ /app/

ENV SQL_ENGINE=django.db.backends.postgresql

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
