FROM alpine:3.13.2

RUN \ 
    apk update && \
    apk add alpine-sdk

WORKDIR /src

