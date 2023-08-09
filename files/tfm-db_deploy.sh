#!/bin/bash
#
# FOREMAN DEPLOY : DB + MEMCACHE (sessions)
#

export http_proxy='http://172.16.202.253:3128'

wget https://apt.puppet.com/puppet6-release-buster.deb
dpkg -i puppet6-release-buster.deb
apt-get -qy update
apt --yes install puppet-agent

apt-get --yes install postgresql-11
cat >> /etc/postgresql/11/main/postgresql.conf <<EOF
listen_addresses = '*'
EOF
cat >> /etc/postgresql/11/main/pg_hba.conf <<EOF
host all all 172.16.202.32/24 md5
EOF
systemctl restart postgresql.service

#su - postgres -c psql
#CREATE USER "foreman" WITH PASSWORD 'p4p1llon';
#CREATE DATABASE foreman OWNER foreman;
echo "CREATE USER foreman WITH PASSWORD 'p4p1llon'; CREATE DATABASE foreman OWNER foreman;" | su - postgres -c psql

# apt-get --yes install memcached
# sed -i 's/-l 127.0.0.1/-l 0.0.0.0/' /etc/memcached.conf
# systemctl restart memcached.service
