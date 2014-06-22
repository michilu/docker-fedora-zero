#!/bin/sh -x

echo "Create supermin appliance."
supermin --prepare yum -o supermin.d
supermin --build --format chroot supermin.d -o appliance.d

cd /appliance.d


echo "Minimizing locale-archive."
# this is really kludgy and will be fixed with a better way of building
# these containers
mv usr/share/locale/en usr/share/locale/en_US tmp
rm -rf usr/share/locale/*
mv tmp/en tmp/en_US usr/share/locale/
mv usr/share/i18n/locales/en_US tmp
rm -rf usr/share/i18n/locales/*
mv tmp/en_US usr/share/i18n/locales/

echo "Cleaning old log."
echo -n "" > var/log/lastlog


tar --create . |xz --best > /fedora-zero.tar.xz
#tar --create . |xz --best --memlimit-compress=70% > /fedora-zero.tar.xz
