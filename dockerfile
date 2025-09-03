FROM python:3.9-slim

COPY helloWorld.py /app/helloWorld.py

WORKDIR /app

CMD ["python", "helloWorld.py"]