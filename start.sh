#!/bin/bash

/usr/sbin/varnishd -j unix,user=varnish	\
	-F \
	-f /etc/varnish/default.vcl \
	-s malloc,1g \
	-a :6081 \
    -T :6082 \