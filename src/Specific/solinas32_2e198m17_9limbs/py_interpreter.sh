#!/bin/sh
set -eu

/usr/bin/env python3 "$@" -Dq='2**198 - 17' -Dmodulus_bytes='22' -Da24='121665'