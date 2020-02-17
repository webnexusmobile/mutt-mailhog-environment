#
# MailHog Dockerfile
#

FROM alpine:3.11

# Install wget:
RUN apk update \ 
  && apk upgrade \
  && apk add wget \
  && adduser -S mailhog \
  && wget -O /usr/local/bin/mailhog https://github.com/mailhog/MailHog/releases/download/v1.0.0/MailHog_linux_amd64 \
  && chmod +x /usr/local/bin/mailhog \
  && apk del wget
  # adduser -D -u 1000 mailhog

# Switch to mutt mailgog:
WORKDIR /home/mailhog
USER mailhog

ENTRYPOINT ["mailhog"]

# Expose the SMTP and HTTP ports:
EXPOSE 1025 8025