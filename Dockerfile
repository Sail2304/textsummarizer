FROM python:3.10.5
WORKDIR /app
COPY --exclude=.git/ . /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]
