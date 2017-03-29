FROM alpine:3.5


RUN apk update && \
    apk upgrade && \
    apk add haproxy

COPY haproxy.cfg /etc/haproxy

EXPOSE 443

ENTRYPOINT ["/usr/sbin/haproxy", "-f", "/etc/haproxy/haproxy.cfg"]


