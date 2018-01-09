OpenStack client
================

Usage
-----

### Configuration

Source your openstack connection parameters from the openstack rc file you downloaded from horizon.
```
source openrc.sh
```

### Alias

Add this alias to your environment:
```
alias openstack='docker run -it --rm -e OS_USERNAME=$OS_USERNAME -e OS_PASSWORD=$OS_PASSWORD -e OS_AUTH_URL=$OS_AUTH_URL -e OS_TENANT_NAME=$OS_TENANT_NAME ullbergm/openstack-client:latest openstack'
```

### Usage

Execute commands against your openstack environment
```
openstack image list
```
