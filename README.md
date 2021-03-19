# Puppet Magic Castle

## Deploy Puppet Testing Infrastructure

```bash
git submodule update --init --recursive
cd pupperware
touch .env && echo PUPPERWARE_ANALYTICS_ENABLED=false > .env
DNS_ALT_NAMES=puppet.dokku.cloud.ucar.edu docker-compose up -d
```
