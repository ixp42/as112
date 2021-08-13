from alpine:edge

RUN apk add bird
RUN apk add iproute2

RUN mkdir -p /etc/bird
ADD bird.conf /etc/bird/bird.conf

ADD entry.sh /entry.sh
RUN chmod +x /entry.sh

ENTRYPOINT /entry.sh
