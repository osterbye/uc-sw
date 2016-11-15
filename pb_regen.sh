#!/bin/bash

# generate sources (.h and .c) from protobuf definitions
protoc --plugin=protoc-gen-nanopb=../tools/nanopb/generator/protoc-gen-nanopb --nanopb_out=./relaxed/nanopb  --proto_path=./intercomm ./intercomm/MessageDefinitions.proto