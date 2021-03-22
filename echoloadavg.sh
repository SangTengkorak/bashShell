#!/usr/bin/env bash
echo -e "1 Minute\t5 Minutes\t10 Minutes\tRunning Processes\tLast Process ID"
cat /proc/loadavg | awk '{print $1"\t\t"$2"\t\t"$3"\t\t"$4"\t\t\t"$5}'
