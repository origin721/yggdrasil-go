#!/bin/bash
this_dir=$(dirname $0);
${this_dir}/yggdrasil -genconf > /etc/ygg.conf
