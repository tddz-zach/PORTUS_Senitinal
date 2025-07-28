#!/bin/bash

LOG_FILE="portscan_alerts.txt"
THRESHOLD=10  # Number of ports accessed that indicates a port scan
IP="127.0.0.1"

echo "[*] Scanning for potential port scans on localhost ($IP)..."
echo "Timestamp: $(date)" >> $LOG_FILE

# Get all connection attempts to localhost in the last few minutes
PORT_COUNTS=$(sudo netstat -ant | grep "$IP" | awk '{print $5}' | cut -d: -f2 | sort | uniq -c | sort -nr)

# Count how many unique ports were accessed
PORT_COUNT_TOTAL=$(echo "$PORT_COUNTS" | wc -l)

if [ "$PORT_COUNT_TOTAL" -gt "$THRESHOLD" ]; then
    echo "[$(date)] ⚠️ Port scan detected on localhost - $PORT_COUNT_TOTAL ports probed." | tee -a $LOG_FILE
    echo "$PORT_COUNTS" >> $LOG_FILE
    echo "------------------------------------------" >> $LOG_FILE
else
    echo "[$(date)] ✅ No port scan detected (Only $PORT_COUNT_TOTAL ports accessed)." >> $LOG_FILE
    echo "------------------------------------------" >> $LOG_FILE
fi
