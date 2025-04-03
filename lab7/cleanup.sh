#!/bin/bash

find . -type f -name "*.tmp" -exec rm -f {} \;

echo "Temporary files removed."
