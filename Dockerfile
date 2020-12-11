FROM alpine:3.12.2

RUN \ 
    apk update && \
    apk add alpine-sdk

WORKDIR /src

