#!/usr/bin/env sh

# Copyright (C) 2019 Mikkel Kroman <mk@maero.dk>
# All rights reserved.

if [ ! -z "${AWS_ACCESS_KEY_ID__FILE}" ]; then
  export AWS_ACCESS_KEY_ID=$(cat ${AWS_ACCESS_KEY_ID__FILE})
else
  echo "Missing AWS_ACCESS_KEY_ID__FILE"
  exit 1
fi

if [ ! -z "${AWS_SECRET_ACCESS_KEY__FILE}" ]; then
  export AWS_SECRET_ACCESS_KEY=$(cat ${AWS_SECRET_ACCESS_KEY__FILE})
else
  echo "Missing AWS_SECRET_ACCESS_KEY__FILE"
  exit 1
fi

crond -f -l 0
