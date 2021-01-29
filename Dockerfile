FROM alpine:3.13.1

RUN \ 
    apk update && \
    apk add alpine-sdk

WORKDIR /src

