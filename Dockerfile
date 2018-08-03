# 基於 php-fpm 增加 modules, 有些相依處理很麻煩, 直接參考 wordpress 的影像檔
# https://github.com/wpengine/php-docker/blob/master/Dockerfile.php7.2
FROM php:7-fpm

RUN set -ex; \
  apt-get update; \
  apt-get install -y \
    libldap2-dev \
  ; \
  apt-get clean; \
	rm -rf /var/lib/apt/lists/*; \
  docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu; \
  docker-php-ext-install \
    ldap \
    pdo_mysql \
  ; \
