#!/bin/bash
set -e

rm -f /skyler/tmp/pids/server.pid

exec "$@"