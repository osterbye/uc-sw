#!/bin/bash

# remove all generated files except sys_main.c
rm -f include/*.h
find ./source ! -name 'sys_main.c' -type f -exec rm -f {} +
