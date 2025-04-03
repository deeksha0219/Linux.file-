#!/bin/bash

echo "Listing .tmp files in /tmp before deletion:"
ls /tmp/*.tmp /dev/null

rm -f /tmp/*.tmp /dev/null

echo "Listing .tmp files in /tmp after deletion:"
ls /tmp/*.tmp dev/null || echo "No .tmp files found."

