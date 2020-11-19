FROM registry.aliyuncs.com/acs/alpine:3.5
RUN apk add --update curl tzdata iproute2 bash libc6-compat vim &&  \
 	rm -rf /var/cache/apk/* && \
 	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
 	echo "Asia/Shanghai" >  /etc/timezone

COPY go-sample /usr/local/bin/go-sample
RUN chmod +x /usr/local/bin/go-sample
WORKDIR /root
CMD go-sample