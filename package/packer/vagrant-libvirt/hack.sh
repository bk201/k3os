#!/bin/sh
set -ex

# a dirty hack to reduce grub menu timeout
cp -r /usr/libexec/k3os /root/
sed -i 's,set timeout=10,set timeout=1,' /root/k3os/install
mount -o bind /root/k3os /usr/libexec/k3os
