#!/bin/sh

if [ -n "$ICECAST_SOURCE_PASSWORD" ]; then
   sed -i "s/<source-password>[^<]*<\/source-password>/<source-password>$ICECAST_SOURCE_PASSWORD<\/source-password>/g" /etc/icecast/icecast.xml
fi
if [ -n "$ICECAST_RELAY_PASSWORD" ]; then
   sed -i "s/<relay-password>[^<]*<\/relay-password>/<relay-password>$ICECAST_RELAY_PASSWORD<\/relay-password>/g" /etc/icecast/icecast.xml
fi
if [ -n "$ICECAST_ADMIN_PASSWORD" ]; then
   sed -i "s/<admin-password>[^<]*<\/admin-password>/<admin-password>$ICECAST_ADMIN_PASSWORD<\/admin-password>/g" /etc/icecast/icecast.xml
fi
if [ -n "$ICECAST_ADMIN_USER" ]; then
   sed -i "s/<admin-user>[^<]*<\/admin-user>/<admin-user>$ICECAST_ADMIN_USER<\/admin-user>/g" /etc/icecast/icecast.xml
fi
if [ -n "$ICECAST_ADMIN_EMAIL" ]; then
   sed -i "s/<admin>[^<]*<\/admin>/<admin>$ICECAST_ADMIN_EMAIL<\/admin>/g" /etc/icecast/icecast.xml
fi
if [ -n "$ICECAST_LOCATION" ]; then
   sed -i "s/<location>[^<]*<\/location>/<location>$ICECAST_LOCATION<\/location>/g" /etc/icecast/icecast.xml
fi
if [ -n "$ICECAST_HOSTNAME" ]; then
   sed -i "s/<hostname>[^<]*<\/hostname>/<hostname>$ICECAST_HOSTNAME<\/hostname>/g" /etc/icecast/icecast.xml
fi
if [ -n "$ICECAST_MAX_CLIENTS" ]; then
   sed -i "s/<clients>[^<]*<\/clients>/<clients>$ICECAST_MAX_CLIENTS<\/clients>/g" /etc/icecast/icecast.xml
fi

exec "$@"
