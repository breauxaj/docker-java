FROM breauxaj/alpine:latest

RUN apk add openjdk11-jdk \
  && rm -rf /var/cache/apk/*

CMD ["sh"]