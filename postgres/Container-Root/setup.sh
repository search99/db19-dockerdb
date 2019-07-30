#!/bin/sh

if [ -d /etc/apt ]; then
        [ -n "$http_proxy" ] && echo "Acquire::http::proxy \"${http_proxy}\";" > /etc/apt/apt.conf; \
        [ -n "$https_proxy" ] && echo "Acquire::https::proxy \"${https_proxy}\";" >> /etc/apt/apt.conf; \
        [ -f /etc/apt/apt.conf ] && cat /etc/apt/apt.conf
fi
apt update -yqq
apt install python3 -yqq
apt install python3-pip -yqq
apt install postgresql-server-dev-11 -yqq
pip3 install pgcli six

apt remove postgresql-server-dev-11 -yqq
apt autoremove -yqq
