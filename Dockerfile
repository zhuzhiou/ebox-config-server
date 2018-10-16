FROM java:8-jre
MAINTAINER 朱志欧<zhuzhiou@qq.com>
ARG JAR_FILE
ADD target/${JAR_FILE} /var/lib/ebox-config-server.jar
RUN bash -c 'touch /var/lib/ebox-config-server.jar'
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/var/lib/ebox-config-server.jar"]