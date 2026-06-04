#!/bin/bash
echo "===== SERVER HEALTH REPORT ====="
echo "Generated on: $(date)"
echo

echo "Hostname: "
hostname
echo

echo "Uptime: "
uptime
echo

echo "Memory Usage: "
free -h
echo

echo "Disk Usage: "
df -h /
echo

