FROM alpine:3.13.0

RUN \ 
    apk update && \
    apk add alpine-sdk

WORKDIR /src

