FROM redmine:3
MAINTAINER tukiyo3 "tukiyo3@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    openjdk-7-jre-headless fonts-liberation curl graphviz \
    fonts-takao git subversion mercurial \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/plantuml && curl -L -o /opt/plantuml/plantuml.jar http://sourceforge.net/projects/plantuml/files/plantuml.jar/download

COPY plantuml /usr/local/bin/plantuml
RUN chmod +x /usr/local/bin/plantuml

