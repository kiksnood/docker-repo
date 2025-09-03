FROM python:3.9-slim
WORKDIR /app

RUN apt-get update && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

# Clone repo once during build
RUN git clone https://github.com/kiksnood/docker-repo.git .

# Run git pull first, then start your script
CMD git pull && python helloWorld.py
