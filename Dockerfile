FROM alpine:3.13.5

RUN \ 
    apk update && \
    apk add alpine-sdk

WORKDIR /src

