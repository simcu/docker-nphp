FROM alpine
COPY files /home/install
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
		apk add --update php5-curl php php5-pdo php5-pdo_mysql php5-mcrypt php5-openssl php5-fpm php5-zip php5-xml php5-mysql \
		php5-xmlrpc php5-pear php5-sockets php5-gettext php5-iconv php5-pdo_pgsql php5-pdo_sqlite php5-zlib php5-mysqli php5-redis \
		php5-bz2 php5-json php5-dom php5-phar php5-ctype php5-gd php5-bcmath php5-memcached php5-soap nginx sqlite && \
        sh /home/install/config.sh && rm -rf /home/install && rm -rf /var/cache/apk/*
CMD "/run.sh"