#
# Dockerfile for mutt
#

FROM alpine:3.11

# Install mutt:
RUN apk update \ 
  && apk upgrade \
  && apk add mutt \
  && adduser -S mutt

# Switch to mutt user:
WORKDIR /home/mutt
USER mutt
COPY muttrc .muttrc
COPY send-mails.sh send-mails.sh

ENTRYPOINT /bin/sh send-mails.sh