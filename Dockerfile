FROM alpine:3.12.3

RUN \ 
    apk update && \
    apk add alpine-sdk

WORKDIR /src

