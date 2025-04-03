#!/bin/bash

# Check if udisksctl is installed
if ! command -v udisksctl &> /dev/null; then
  echo "Error: udisksctl is not installed."
  exit 1
fi

# List mounted filesystems
udisksctl mount -l | grep "mounted at"

# Exit with success
exit 0
