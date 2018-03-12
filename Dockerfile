FROM alpine:latest

RUN apk add --no-cache python py-pip
RUN pip install --no-cache-dir Flask

WORKDIR /home/app

COPY ./hello.py .

ENV FLASK_DEBUG=1

CMD ["python", "hello.py"]
