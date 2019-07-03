#!/bin/bash

set -e

# Make /var/www directory
mkdir /var/www

# Make /var/www group writeable
chmod g+w /var/www

# Create symlinks under /var/www to Obvius and KU code

ln -s /opt/app-root/src/var/www/www.ku.dk/ /var/www/www.ku.dk
ln -s /opt/app-root/src/var/www/obvius /var/www/obvius

# Copy DBIx::Recordset patches to system perl library
cp /opt/app-root/src/var/www/obvius/recordset_patches/DBIx/* /opt/app-root/src/extlib/lib/perl5/DBIx/

# Create /var/www/www.ku.dk/local/conf
# This folder will contain configuration files. Actual configuration files from
# the rest of the filesystem will be symlinked to point to files in this folder.
# This way the files in the folder can be overwritten by a bind-mounted host
# directory, making it possible to edit the files on development machines.
mkdir -p /var/www/www.ku.dk/local/conf

# Copy default configuration files
cp /opt/app-root/src/etc/obvius/ku.conf /var/www/www.ku.dk/local/conf/ku.conf
cp /opt/rh/rh-perl526/root/etc/freetds.conf /var/www/www.ku.dk/local/conf/freetds.conf

# Move old freeteds.conf file and create a symlink to the conf-folder one
mv /opt/rh/rh-perl526/root/etc/freetds.conf /opt/rh/rh-perl526/root/etc/freetds.conf.orig
ln -s /var/www/www.ku.dk/local/conf/freetds.conf /opt/rh/rh-perl526/root/etc/freetds.conf

# Create /etc/obvius
mkdir -p /etc/obvius

# Copy /etc/obvius/defaults.conf
cp /opt/app-root/src/etc/obvius/defaults.conf /etc/obvius/defaults.conf

# Symlink /etc/obvius/ku.conf
ln -s /var/www/www.ku.dk/local/conf/ku.conf /etc/obvius/ku.conf

# Make sure /var/obvius_var_files exists
mkdir -p /var/obvius_var_files
chown default /var/obvius_var_files
