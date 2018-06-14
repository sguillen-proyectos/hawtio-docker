FROM openjdk:8-jre-alpine

WORKDIR /root

# RUN wget -q https://oss.sonatype.org/content/repositories/public/io/hawt/hawtio-app/2.0.2/hawtio-app-2.0.2.jar -O /root/hawtio.jar

RUN apk update --quiet \
    && apk add --quiet wget bash

COPY jars/hawtio-app-1.4.68.jar /root/hawtio.jar
# COPY jars/hawtio-app-1.5.10.jar /root/hawtio.jar
# COPY jars/hawtio-app-2.0.2.jar /root/hawtio.jar

COPY files/wrapper.sh /usr/bin/wrapper.sh
RUN chmod +x /usr/bin/wrapper.sh

EXPOSE 9000/tcp

ENTRYPOINT [ "/usr/bin/wrapper.sh" ]
