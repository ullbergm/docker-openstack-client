OpenStack client
================
[![](https://images.microbadger.com/badges/image/ullbergm/openstack-client.svg)](https://microbadger.com/images/ullbergm/openstack-client)
[![](https://images.microbadger.com/badges/version/ullbergm/openstack-client.svg)](https://microbadger.com/images/ullbergm/openstack-client)
[![](https://images.microbadger.com/badges/commit/ullbergm/openstack-client.svg)](https://microbadger.com/images/ullbergm/openstack-client)
[![Docker Pulls](https://img.shields.io/docker/pulls/ullbergm/openstack-client.svg)]()
[![Docker Stars](https://img.shields.io/docker/stars/ullbergm/openstack-client.svg)]()



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

Or if you are using openstack api v3:

```
alias openstack='docker run -it --rm -e OS_AUTH_URL=$OS_AUTH_URL -e OS_PROJECT_DOMAIN_ID=$OS_PROJECT_DOMAIN_ID -e OS_REGION_NAME=$OS_REGION_NAME -e OS_PROJECT_NAME=$OS_PROJECT_NAME -e OS_USER_DOMAIN_NAME=$OS_USER_DOMAIN_NAME -e OS_IDENTITY_API_VERSION=$OS_IDENTITY_API_VERSION -e OS_INTERFACE=$OS_INTERFACE -e OS_PASSWORD=$OS_PASSWORD -e OS_USERNAME=$OS_USERNAME -e OS_PROJECT_ID=$OS_PROJECT_ID ullbergm/openstack-client:latest openstack'
```

### Usage

Execute commands against your openstack environment
```
openstack image list
```
