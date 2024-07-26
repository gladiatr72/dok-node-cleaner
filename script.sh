#!/bin/bash

apt remove -y --auto-remove $(
  apt list --installed |
    egrep '(compiler|cuda|gcc|g\+\+|xauth)' |
    cut -d"/" -f1 |
    egrep -v 'gcc.*(base|s1)$'
)

rm -rf /var/cache/apt/archives/*

dpkg --configure -a

df -h /
