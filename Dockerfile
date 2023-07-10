FROM node:18.16

RUN apt-get update && apt-get -y install moreutils
RUN npm i minify@10.2.0 -g

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
