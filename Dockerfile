FROM alpine
COPY files /home/install
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
		apk add --update php-curl php php-pdo php-pdo_mysql php-mcrypt php-openssl php-fpm php-zip php-xml php-mysql \
		php-xmlrpc php-pear php-sockets php-gettext php-iconv php-pdo_pgsql php-pdo_sqlite php-zlib php-mysqli php-redis\
		php-bz2 php-json php-dom php-phar php-ctype php-gd php-bcmath php-memcache php-soap nginx sqlite && \
        sh /home/install/config.sh && rm -rf /home/install && rm -rf /var/cache/apk/*
CMD "/run.sh"