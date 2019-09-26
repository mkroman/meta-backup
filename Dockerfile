# Copyright (C) 2019 Mikkel Kroman <mk@maero.dk>
# All rights reserved.

FROM alpine:3.10.2
MAINTAINER Mikkel Kroman <mk@maero.dk>

RUN apk add restic

ENTRYPOINT crond -f
