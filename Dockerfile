FROM python:3.8

COPY database-service/api.yml .
COPY database-service/app.py .
COPY database-service/requirements.txt .

RUN chmod +x requirements.txt

RUN pip install -r requirements.txt --no-cache-dir --compile

ENV FLASK_ENV="production"

ENV PYTHONUNBUFFERED=1

EXPOSE 5000

CMD flask run --host 0.0.0.0