FROM ubuntu:latest
MAINTAINER Stefano Vettor "freedom2099@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential git
COPY . /app
WORKDIR /app
RUN mkdir cache
RUN git clone https://github.com/freedom27/hotels_transit.git
RUN mv conf.ini /app/hotels_transit/conf.ini
WORKDIR /app/hotels_transit
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["server.py"]
