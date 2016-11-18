#!/bin/bash
echo 'executing protoc to generate python lib from proto file...'  &&
protoc -I=intercomm intercomm/MessageDefinitions.proto --python_out=scripts  &&
echo 'generating code for global state variables...'  &&
python3 scripts/gen_global_state_code.py  &&
echo 'generating code for constructing status update message...'  &&
python3 scripts/gen_status_update_code.py  &&
echo 'code generation done'
