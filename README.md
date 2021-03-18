# Puppet Magic Castle

## Deploy Puppet Testing Infrastructure

```bash
cd pupperware
touch .env && echo PUPPERWARE_ANALYTICS_ENABLED=false > .env
DNS_ALT_NAMES=cloudhpc.example.com docker-compose up -d
```
