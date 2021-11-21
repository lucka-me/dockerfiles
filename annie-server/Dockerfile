FROM alpine

RUN apk add ffmpeg
COPY annie /usr/local/bin

WORKDIR /workspace

ENTRYPOINT [ "annie", "--server" ]