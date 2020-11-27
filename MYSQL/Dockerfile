FROM ubuntu:latest

WORKDIR /home

RUN apt-get update \
    && apt-get install -y mysql-server \
    && apt-get install nano \
    && rm -rf /var/lib/apt/list/* \
    && apt-get purge --autoremove \
    && apt-get clean


COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]