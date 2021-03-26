FROM alpine:3.13.3

RUN \ 
    apk update && \
    apk add alpine-sdk

WORKDIR /src

