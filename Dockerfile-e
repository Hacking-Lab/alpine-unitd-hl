FROM hackinglab/alpine-base-hl:3.2.0
#FROM alpine:3.16

LABEL maintainer=<ivan.buetler@hacking-lab.com>
MAINTAINER Ivan Bütler <ivan.buetler@hacking-lab.com>

ADD root /

RUN apk add --no-cache --update \
    unit && \
    rm -rf /var/cache/apk/* && \
    chown -R root:root /opt/www

# Expose the ports for unitd (nginx mini web server)
EXPOSE 80

