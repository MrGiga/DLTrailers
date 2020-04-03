FROM linuxserver/tautulli:latest

RUN apk add --no-cache python3 &&\
    pip3 install requests==2.22.0 &&\
    pip3 install tmdbsimple==2.2.0 &&\
    pip3 install youtube-dl==2020.1.15 &&\
    pip3 install unidecode==1.1.1
    
ADD https://github.com/airship-david/Trailer-Downloader/blob/2ceb31d13862af29a1849e26244847f39d51fbbc/download.py /scripts/download.py

RUN mkdir /scripts/downloads &&\
    chmod 777 /scripts/download.py &&\
    chmod 666 /scripts/downloads
