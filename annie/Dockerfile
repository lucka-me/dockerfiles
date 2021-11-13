FROM alpine

RUN apk add curl
RUN apk add ffmpeg
RUN apk add --no-cache --upgrade grep
RUN curl -L $(curl -s 'https://api.github.com/repos/iawia002/annie/releases/latest' | grep -oP 'https://github.com.+?/download/.+?Linux_64.+?\.tar\.gz') > annie.tar.gz
RUN tar zxvf annie.tar.gz && mv annie /usr/local/bin/annie && rm annie.tar.gz

WORKDIR /workspace

ENTRYPOINT [ "annie" ]