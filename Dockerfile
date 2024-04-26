FROM alpine:latest
MAINTAINER Mosher23
RUN apk add --no-cache git bash beep rsync
COPY . /iconsync
VOLUME /unraid_vm_icons
VOLUME /config
CMD bash ./iconsync/icon_download.sh ; sleep 5
