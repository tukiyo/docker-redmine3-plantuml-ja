FROM redmine:3
MAINTAINER tukiyo3 "tukiyo3@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    openjdk-7-jre-headless fonts-liberation curl graphviz \
    fonts-takao git mercurial locales \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/plantuml && curl -L -o /opt/plantuml/plantuml.jar http://sourceforge.net/projects/plantuml/files/plantuml.jar/download

COPY bin/plantuml /usr/bin/plantuml
RUN chmod +x /usr/bin/plantuml

# ja
RUN sed -i 's/# ja_JP.UTF-8 UTF-8/ja_JP.UTF-8 UTF-8/g' /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=ja_JP.UTF-8
ENV LANG=ja_JP.UTF-8

# install redmine plugins
RUN git clone https://github.com/ndl/wiki_external_filter.git /usr/src/redmine/plugins/wiki_external_filter \
    && cp -a /usr/src/redmine/plugins/wiki_external_filter/config/wiki_external_filter.yml /usr/src/redmine/config/
