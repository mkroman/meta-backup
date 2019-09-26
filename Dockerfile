# Copyright (C) 2019 Mikkel Kroman <mk@maero.dk>
# All rights reserved.

FROM alpine:3.10.2
MAINTAINER Mikkel Kroman <mk@maero.dk>

RUN apk add restic

COPY init.sh /init.sh
COPY create-backup.sh /etc/periodic/15min/create-backup

RUN chmod 755 /init.sh /etc/periodic/15min/create-backup

ENTRYPOINT /init.sh
