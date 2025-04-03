#!/bin/bash
mkdir -p backup
cp *.txt backup/dev/null
echo "backup directory contents:"
ls -l backup/
