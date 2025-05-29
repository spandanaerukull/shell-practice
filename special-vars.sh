#!/bin/bash

echo "The name of the script is: $@"
echo "number of variables: $#"
echo "script name: $0"
echo "current directory: $PWD"
echo "current user: $USER"
echo "current shell: $SHELL"
echo "current date: $(date)"
echo "home directoryof user: $HOME"
echo " current process id: $$"
echo "PIDof the last command: $!"