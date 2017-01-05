# nginx-rtmp
`myconfigure.sh` is the configure i used when complie nginx-rtmp.
`nginx.conf` is the configure file for nginx.

## Dockerfile
In Dockerfile, 3th and 4th lines:
```
COPY nginx-rtmp-install-static-1.10.2 /rtmp
COPY libs /lib
```
`nginx-rtmp-install-static-1.10.2` contain the nginx-rtmp binary execution file.
`libs` contain libs from system `/lib` path. I got it from running `cp /lib/libnss_* ./libs` on ubuntu-16.04-x64.

## Docker Hub address

I build a Docker image. You can pull it by `docker pull shimachao/rtmp:nginx-1.10.2`.

[Docker hub address](https://hub.docker.com/r/shimachao/rtmp/).