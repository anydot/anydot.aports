FROM alpine:3.14.0

RUN \ 
    apk update && \
    apk add alpine-sdk

WORKDIR /src

