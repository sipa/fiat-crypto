#!/bin/sh
set -eu

/usr/bin/env python3 "$@" -Dq='2**255 - 19' -Dmodulus_bytes='23 + 2/11' -Da24='121665'
