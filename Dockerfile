FROM alpine:3.14.2

RUN \ 
    apk update && \
    apk add alpine-sdk

WORKDIR /src

