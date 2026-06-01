#!/bin/bash

echo "===== SERVER HEALTH CHECKER ====="

echo "----------------"
echo "current user:"
whoami

echo "-----------------"
echo "system uptime:"
uptime

echo "-----------------"
disk_usage=$( df / | awk 'NR==2{print $5}'| sed 's/%//')
echo "disk usage:$disk_usage%"
if [ "$disk_usage" -gt 80 ]; then
   echo "WARNING: Disk Usage above 80%"
fi

echo "-----------------"
memory_usage=$( free |awk '/Mem:/ {printf("%.0f",$3/$2*100)}')
echo "memory usage:$memory_usage%"
if [ "$memory_usage" -gt 80 ]; then
   echo "WARNING: Memory Usage above 80%"
fi

echo "------------------"
echo "top 5 processes:"
ps -eo pid,comm,%cpu --sort=-%cpu |head -6

echo "------------------"

{
  echo "===== SERVER REPORT ====="
  whoami
  date
  uptime
  echo "disk usage:$disk_usage%"
  echo "memory usage:$memory_usage%"
} > server_health.log

echo "report saved to server_health.log"

