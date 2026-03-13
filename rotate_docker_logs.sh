#!/bin/sh

echo "========== Started Docker Log Rotation =========="
date

sudo find /var/lib/docker/containers/ -type f -name "*.log" -exec truncate -s 0 {} \;

echo "Successfully truncated Docker log files."
echo "========== Finished Docker Log Rotation =========="
