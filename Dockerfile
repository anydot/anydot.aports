FROM alpine:3.12.1

RUN \ 
    apk update && \
    apk add alpine-sdk

WORKDIR /src

