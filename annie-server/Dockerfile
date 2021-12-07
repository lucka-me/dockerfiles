FROM alpine

RUN apk add ffmpeg
ADD annie /usr/local/bin
ADD annie-server /usr/local/bin

WORKDIR /workspace

ENTRYPOINT [ "annie-server" ]