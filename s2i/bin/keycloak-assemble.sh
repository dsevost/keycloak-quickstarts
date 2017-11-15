#!/bin/bash

KEYCLOAK_EXAMPLE_JSON=config/keycloak-example.json

if [ -r "/tmp/src/$KEYCLOAK_EXAMPLE_JSON" ] ; then
    cat /tmp/src/$KEYCLOAK_EXAMPLE_JSON | \
	sed "s|\"auth-server-url\": \"http://localhost:8180/auth\"|\"auth-server-url\": \"$SSO_SERVER_AUTH_URL\"|" \
	> config/keycloak.json
fi
