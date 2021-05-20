FROM alpine:3.7

RUN echo -e "https://mirror.sr.ht/alpine/v3.13/sr.ht\n$(cat /etc/apk/repositories)" > /etc/apk/repositories
RUN echo "@main http://dl-cdn.alpinelinux.org/alpine/v3.9/main" >> /etc/apk/repositories
RUN echo "@community http://dl-cdn.alpinelinux.org/alpine/v3.9/main" >> /etc/apk/repositories

RUN wget -q -O /etc/apk/keys/alpine@sr.ht.rsa.pub https://mirror.sr.ht/alpine/alpine@sr.ht.rsa.pub

RUN apk update
