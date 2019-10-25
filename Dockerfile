FROM linuxserver/tautulli:latest
#FROM python:3.7.5-alpine3.9

RUN pip install tmdbsimple==2.2.0
RUN pip install youtube-dl==2019.4.24
RUN pip install unidecode==1.1.0

ADD https://raw.githubusercontent.com/airship-david/Trailer-Downloader/master/download.py /scripts/download.py
