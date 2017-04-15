FROM  maven:3.3.9-jdk-8

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz && tar --strip-components=1 -xvzf docker-17.04.0-ce.tgz -C /usr/local/bin

COPY docker-entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT [ "docker-entrypoint.sh"]