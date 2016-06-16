#!/bin/sh
#python test-sample.py
make clean
make
python test-all2.py
python test-all.py

