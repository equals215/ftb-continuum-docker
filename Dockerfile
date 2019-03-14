FROM java:openjdk-8-jdk-alpine

LABEL "name"="equals215/ftb-continuum-server"
LABEL "version"="1.0"
LABEL "description"="FeedTheBeast Continuum modpack - Server Image"
LABEL "author"="Thomas FOUBERT <thomas@thomas-foubert.com>"

RUN set -xe \
    mkdir /ftb-server

RUN set -xe \
    apk -U add --no-cache wget

COPY ftb-continuum-server/* /ftb-server/
WORKDIR /ftb-server
RUN set -xe \
    chmod +x FTBInstall.sh ServerStart.sh settings.sh settings-local.sh

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
CMD ["/ftb-server/ServerStart.sh"]
