FROM python:3-slim-bookworm

WORKDIR /app/simple-flask/

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "gunicorn", "--bind", "0.0.0.0:8000", "app:app" ]