FROM java:openjdk-8-jdk-alpine

LABEL "name"="equals215/ftb-continuum-server"
LABEL "version"="1.0"
LABEL "description"="FeedTheBeast Continuum modpack - Server Image"
LABEL "author"="Thomas FOUBERT <thomas@thomas-foubert.com>"

RUN set -xe \
    mkdir /ftb-server

RUN set -xe \
    apk -U add --no-cache wget ca-certificates \
    update-ca-certificates

COPY ftb-continuum-server/* /ftb-server/

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
CMD ["/ftb-server/ServerStart.sh"]
