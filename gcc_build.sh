#!/bin/bash

LIB='-lm'
INCL='-Iinclude/ -Isrc/m1/include/ -Isrc/m2/include/'
FLAGS='-Wall -g -ggdb -O1'

gcc -S -ooutput/main.s src/main.c  $INCL
gcc -S -ooutput/m1.s src/m1/m1.c   $INCL
gcc -S -ooutput/m2.s src/m2/m2.c   $INCL

gcc -c -ooutput/main.o src/main.c  $INCL $LIB
gcc -c -ooutput/m1.o src/m1/m1.c   $INCL
gcc -c -ooutput/m2.o src/m2/m2.c   $INCL
gcc -ooutput/app output/main.o output/m1.o output/m2.o $LIB $FLAGS
