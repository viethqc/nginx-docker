FROM ubuntu

MAINTAINER viethq8

RUN apt-get update
RUN apt-get install -y  nginx
RUN apt-get install -y curl telnet net-tools nano

RUN mkdir -p /etc/nginx/cert

COPY entrypoint.sh /user/bin/entrypoint.sh
RUN chmod +x /user/bin/entrypoint.sh

EXPOSE 8432

ENTRYPOINT ["/user/bin/entrypoint.sh"]
