#!/bin/bash

this_dir=$(dirname $0);
mkdir /run/yggdrasil;
cat /etc/ygg.conf | ${this_dir}/yggdrasil -normaliseconf -useconf > /run/yggdrasil/yggdrasil.conf;
${this_dir}/yggdrasil -useconffile /run/yggdrasil/yggdrasil.conf
