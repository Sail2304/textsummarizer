FROM python:3.10-slim-buster
WORKDIR /app
COPY . /app

RUN apt-get update -y && apt-get install awscli  libpq-dev build-essential git -y 

RUN pip install --no-cache-dir -r requirements1.txt

CMD ["python3", "app.py"]
