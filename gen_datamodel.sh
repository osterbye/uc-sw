#!/bin/bash

if [ ! -d "tmp/proto2cGeneration" ]; then 
    echo 'Making tmp/proto2cGeneration directory'
    mkdir -p tmp/proto2cGeneration 
fi
cd tmp/proto2cGeneration &&

#if [ ! -d "proto2cGeneration" ]; then
#    echo 'Making /tmp/proto2
#    mkdir proto2cGeneration 
#fi
#cd proto2cGeneration &&
if [ ! -d "nanopb" ]; then
    echo 'Cloining nanopb repository' &&
    git clone https://github.com/nanopb/nanopb.git 
fi
echo 'Generating nanopb protoc plugin'
( cd nanopb/generator/proto/ && make )
echo 'Generating MessageDefinitions.pb.c and MessageDefinitions.pb.h files from proto definitions'
protoc --plugin=protoc-gen-nanopb=./nanopb/generator/protoc-gen-nanopb  --nanopb_out=../../relaxed/nanopb   --proto_path=../../intercomm ../../intercomm/MessageDefinitions.proto &&
#get back to project root directory
cd ../..

echo 'Generating command execution code' &&
python3 scripts/gen_command_execution.py &&
echo 'executing protoc to generate python lib from proto file...'  &&
protoc -I=intercomm intercomm/MessageDefinitions.proto --python_out=scripts  &&
echo 'generating code for global state variables...'  &&
python3 scripts/gen_global_state_code.py  &&
echo 'generating code for constructing status update message...'  &&
python3 scripts/gen_status_update_code.py  &&
echo 'code generation done'
