# docker-skeleton

A docker skeleton - with best practice guide for writing dockerfile &amp; entrypoint.

Assumptions:
 - simple bash based entrypoint
 - one to many services to be configured and started
 - file based configuration files, modified by environment variables
 - reliable, immutable bootstrapping
 - fail fast & retry in entrypoint and for whole container

Keep it simple. Bash solves all your needs. No complex service or daemon for bootstrapping needed.


## Experiences

With the presented approach, we managed to build a real OpenStack test setup - with approx. 30 physical nodes and hence approx. 300 containers in total. 

# TODOs and Extensions

[ ] add side kick container skeleton to host (configuration) data
[ ] extract execution steps out of entrypoint and allow their definition in simple yaml file