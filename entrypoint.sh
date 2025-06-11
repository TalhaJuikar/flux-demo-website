#!/bin/sh

BACKGROUND_COLOR=${BACKGROUND_COLOR:-#f5f5f5}
ENVIRONMENT=${ENVIRONMENT:-development}

sed -i "s/__BACKGROUND_COLOR__/$BACKGROUND_COLOR/g" /usr/share/nginx/html/index.html
sed -i "s/__ENVIRONMENT__/$ENVIRONMENT/g" /usr/share/nginx/html/index.html

nginx -g "daemon off;"