FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y

RUN apt install git -y

COPY requirements.txt /requirements.txt

# set timezone

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN cd /

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

RUN mkdir /Text-replace 

WORKDIR /Text-replace

COPY start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]

