FROM breauxaj/alpine:latest

RUN apk add openjdk11-jdk \
  apache-ant \
  maven \
  && rm -rf /var/cache/apk/*

RUN cd /usr/bin \
  && ln -s ../lib/jvm/default-jvm/jre/bin/javac . \
  && ln -s ../lib/jvm/default-jvm/jre/bin/jar . 

CMD ["sh"]