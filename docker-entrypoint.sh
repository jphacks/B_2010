#! /bin/bash

set -eu

service nginx restart

yarn schema:sync

pm2-runtime /app/dist/main.js
