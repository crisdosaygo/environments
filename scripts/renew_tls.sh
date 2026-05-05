#!/usr/bin/env bash
set -euo pipefail

# Certificates are renewed by certbot.timer. This helper is retained only for
# compatibility with older setup scripts; it must not copy lineages into
# ~/sslcerts or reboot the host.
sudo certbot renew --quiet
sudo nginx -t
sudo systemctl reload nginx
