FROM ubuntu:latest
LABEL maintainer="Gor Pogossian gor@poghosyan.am"
LABEL description="An image for autobuilding test"

ENV HELLO_MSG Hello From Automated Builded Docker

RUN apt-get update && apt-get install apache2 -y && \
    echo ${HELLO_MSG} > /var/www/html/index.html && \
    rm -rf /var/lib/apt/lists/*
    
EXPOSE 80/tcp

ENTRYPOINT ["apachectl"]

CMD ["-D", "FOREGROUND"]
