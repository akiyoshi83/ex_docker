#! /bin/bash

# exit if a command fails
set -e

version=1.5.0
triple=x86_64-unknown-linux-gnu

# install dependency
apt-get update && apt-get install -y curl gdb g++-multilib lib32stdc++6 libssl-dev libncurses5-dev

# install rust
curl -sL https://static.rust-lang.org/dist/rust-$version-$triple.tar.gz | tar xvz -C /tmp
/tmp/rust-$version-$triple/install.sh

# cleanup package manager
apt-get remove --purge -y curl && apt-get autoclean && apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

