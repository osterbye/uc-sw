#!/bin/bash

# remove all generated files except sys_main.c
find ./include ! -name 'het.h' -type f -exec rm -f {} +
find ./source ! -name 'sys_main.c' ! -name 'notification.c' ! -name 'het.c' -type f -exec rm -f {} +
