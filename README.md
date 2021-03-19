# Puppet Magic Castle

## Deploy Puppet Testing Infrastructure

```bash
git submodule update --init --recursive
cd pupperware
touch .env && echo PUPPERWARE_ANALYTICS_ENABLED=false > .env
DNS_ALT_NAMES=puppet.dokku.cloud.ucar.edu docker-compose up -d
```

To confirm that everything is working fine, launch a few ephemeral puppet agents in Docker containers.

```bash
docker run --net pupperware_default puppet/puppet-agent-ubuntu
docker run --net pupperware_default puppet/puppet-agent-alpine
```

If everything was set up properly, you should see something along these lines:

```bash
Info: Retrieving pluginfacts
Info: Retrieving plugin
Info: Caching catalog for 370f926a5c90.cloud.ucar.edu
Info: Applying configuration version '1616112086'
Info: Creating state file /opt/puppetlabs/puppet/cache/state/state.yaml
Notice: Applied catalog in 0.01 seconds
Changes:
Events:
Resources:
            Total: 7
Time:
         Schedule: 0.00
   Transaction evaluation: 0.01
   Catalog application: 0.01
   Convert catalog: 0.02
      Plugin sync: 0.14
   Config retrieval: 0.63
   Node retrieval: 0.67
   Fact generation: 0.99
         Last run: 1616112086
     Startup time: 3.85
       Filebucket: 0.00
            Total: 6.33
Version:
           Config: 1616112086
           Puppet: 7.5.0
```
