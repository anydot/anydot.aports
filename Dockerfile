FROM alpine:3.12.0

RUN \ 
    apk update && \
    apk add alpine-sdk && \
    abuild-keygen -a -n

WORKDIR /src

