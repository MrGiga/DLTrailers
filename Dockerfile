FROM linuxserver/tautulli:latest

RUN apk add --no-cache python3 &&\
    pip3 install requests==2.22.0 &&\
    pip3 install tmdbsimple==2.2.0 &&\
    pip3 install youtube-dl==2020.1.15 &&\
    pip3 install unidecode==1.1.1
    
RUN mkdir /scripts/downloads &&\
    chmod 666 /scripts/downloads
