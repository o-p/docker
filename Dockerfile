# BUILD:
# docker build -t <tag>:<ver> -f ~/Github/o-p/docker/Dockerfile ~/docker

# RUN(interactive)
# docker run -it <tag>:<ver>

# 官方的常用基本 image https://hub.docker.com/_/buildpack-deps/
# 比照開發機選用 trusty (ubuntu 14), scm 包含的東西可以在網站最下方看到
FROM buildpack-deps:trusty-scm

LABEL maintainer="op.github.io@gmail.com"

# kk env
ENV SECRET=/kkcorp/kksecret

# Inject secrets
COPY ./secrets ${SECRET}

# Laravel 常用
ENV APP_ENV development

# create user
# RUN useradd -ms /bin/bash o-p && echo "o-p:0000" | chpasswd && adduser o-p sudo

# USER o-p
# WORKDIR /home/o-p

# RUN mkdir storage repo
# COPY ./ssh /home/o-p/.ssh

# VOLUME /home/o-p/storage
VOLUME /app

EXPOSE 80

CMD ["/bin/bash"]
