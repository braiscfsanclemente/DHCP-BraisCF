#!/bin/bash


# Ruta por defecto a través del router, si se indica
if [ -n "$GATEWAY" ]; then
  ip route replace default via "$GATEWAY"
fi

rsyslogd

named -u bind "$@"

