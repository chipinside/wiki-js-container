#!/usr/bin/env sh

if ! test -z "$DB_SSL_ROOT_CA_LINK"; then
  mkdir -p certs
  wget -O certs/db_ca.pem "$DB_SSL_ROOT_CA_LINK"
  sed -i '/^  ssl:.*/a\  sslOptions:\n    auto: false\n    ca: certs/db_ca.pem' config.yml
fi

exec docker-entrypoint.sh "$@"
