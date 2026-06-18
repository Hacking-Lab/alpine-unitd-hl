FROM hackinglab/alpine-base-hl:3.2
LABEL maintainer="Ivan Buetler <ivan.buetler@hacking-lab.com>"

ADD root /

RUN apk add --no-cache --update \
    unit && \
    rm -rf /var/cache/apk/* && \
    chown -R root:root /opt/www

# Expose the ports for unitd (nginx mini web server)
EXPOSE 80
