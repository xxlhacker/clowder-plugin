FROM registry.access.redhat.com/ubi8/nginx-118

ADD ./nginx.conf "${NGINX_CONFIGURATION_PATH}"
COPY ./dist /opt/clowder-plugin

# Run script uses standard ways to run the application
CMD nginx -g "daemon off;"