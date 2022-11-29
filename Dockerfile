FROM alpine:3.16
#FROM hackinglab/alpine-base:3.2.0

LABEL maintainer=<ivan.buetler@hacking-lab.com>
MAINTAINER Ivan Bütler <ivan.buetler@hacking-lab.com>

ADD root /

RUN apk add --no-cache --update \
    unit && \
    rm -rf /var/cache/apk/* && \
    chown -R root:root /opt/www

ENTRYPOINT ["unitd", "--no-daemon", "--log", "/dev/stderr"]

# Expose the ports for apache2 
EXPOSE 80

