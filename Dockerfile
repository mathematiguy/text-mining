FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y python3-dev python3-apt python3-pip

COPY requirements.txt /root/requirements.txt
RUN pip3 install -r /root/requirements.txt

RUN python3 -m nltk.downloader punkt
RUN python3 -m spacy download en_core_web_md
