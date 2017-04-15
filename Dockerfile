FROM  maven:3.3.9-jdk-8

WORKDIR /

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz && tar --strip-components=1 -xvzf docker-17.04.0-ce.tgz -C /usr/local/bin
ADD docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
