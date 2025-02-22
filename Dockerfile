
FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 5000

ENV FLASK_APP app.py

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
