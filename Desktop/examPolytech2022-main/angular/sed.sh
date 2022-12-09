#!/bin/sh

sed -i 's#{{ JAVA_URL }}#'"$JAVA_URL_ENV_VAR"'#g' /usr/share/nginx/html/*.js