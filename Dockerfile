FROM linuxserver/tautulli:latest

RUN apk add --no-cache python3 &&\
    pip3 install requests==2.22.0 &&\
    pip3 install tmdbsimple==2.2.0 &&\
    pip3 install youtube-dl==2020.1.15 &&\
    pip3 install unidecode==1.1.1

ADD https://raw.githubusercontent.com/airship-david/Trailer-Downloader/master/download.py /scripts/download.py

RUN chmod +x /scripts/download.py &&\
    mkdir /scripts/downloads &&\
    chmod 777 /scripts/download.py &&\
    chmod 666 /scripts/downloads
