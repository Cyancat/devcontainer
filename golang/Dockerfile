FROM golang
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
COPY config/* /root/
RUN apt-get update
RUN apt-get install -y git vim tmux