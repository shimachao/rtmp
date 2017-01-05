FROM busybox:1.25.1-glibc
MAINTAINER chao 531236305@qq.com
COPY nginx-rtmp-install-static-1.10.2 /rtmp
COPY libs /lib
RUN addgroup -S nginx && adduser -D -S -H -G nginx nginx
WORKDIR /rtmp
CMD ["./sbin/nginx", "-p", "./", "-g", "daemon off;"]
EXPOSE 1935
