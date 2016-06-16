#!/bin/sh
#python test-sample.py
make clean
make opt=1
python test-all-opt.py
