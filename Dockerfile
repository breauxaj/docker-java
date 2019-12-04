FROM breauxaj/alpine:latest

RUN apk add openjdk11-jdk \
  && rm -rf /var/cache/apk/*

RUN cd /usr/bin \
  && ln -s ../lib/jvm/default-jvm/jre/bin/javac . \
  && ln -s ../lib/jvm/default-jvm/jre/bin/jar . 

CMD ["sh"]