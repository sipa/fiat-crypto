#!/bin/sh
set -eu

/usr/bin/env python3 "$@" -Dq='2**191 - 19' -Dmodulus_bytes='47.75' -Da24='121665'
