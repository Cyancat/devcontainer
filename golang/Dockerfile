FROM golang
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
COPY config/* /root/
RUN apt-get update
RUN apt-get install -y git vim tmux net-tools

# Change the 172.26.48.1 to the IP of your docker switch IP which run the http proxy at port 7890
# Or remove the proxy part if you can just run the 'go get' without proxy setting
RUN HTTPS_PROXY=http://172.26.48.1:7890 go get -v github.com/ramya-rao-a/go-outline
RUN HTTPS_PROXY=http://172.26.48.1:7890 go get -v golang.org/x/tools/gopls
RUN HTTPS_PROXY=http://172.26.48.1:7890 go get -v github.com/uudashr/gopkgs/v2/cmd/gopkgs