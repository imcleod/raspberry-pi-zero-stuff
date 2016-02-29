#!/bin/bash

for rpm in `ls /export/mirrors/fedora/f23/armhfp/Packages/*/*.noarch.rpm`; do
  if grep -q `rpm -q --queryformat "%{SOURCERPM}" -p $rpm` noarch_clean_pure.txt; then
     echo symlinking $rpm
     ln -s $rpm /export/mirrors/fedora/f23/f23_purenoarch/
  fi
done

