FROM alpine:latest

#RUN apk --no-cache add curl
RUN mkdir /opt/frp && cd /opt/frp
RUN wget https://github.com/fatedier/frp/releases/download/v0.33.0/frp_0.33.0_linux_amd64.tar.gz
RUN tar -zxvf frp* --strip-components=1 --directory /opt/frp
RUN ls
RUN mkdir /etc/frp
VOLUME /etc/frp
ENTRYPOINT /opt/frp/frpc -c /etc/frp/frpc.ini