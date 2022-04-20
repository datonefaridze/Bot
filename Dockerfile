FROM ubuntu:20.04
RUN apt update
RUN apt-get install -y python3.8
RUN apt install -y python3-pip

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .


CMD ["rasa", "run", "--enable-api", "--port", "8080"]
#uvicorn server:app --reload --port 8080
