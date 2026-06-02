#!/bin/bash

# =========================================
# KNH Hospital Archive Script
# =========================================

# =========================================
echo "=================================="
echo "Starting log archive process..."
echo "=================================="

timestamp=$(date +"%Y%m%d_%H%M%S")

# =========================================
# Member 4 - Kethia Keza
# Archive Heart Rate Logs
# =========================================

if [ -f active_logs/heart_rate_log.log ]; then

    mv active_logs/heart_rate_log.log \
    archived_logs/heart_rate_$timestamp.log

    touch active_logs/heart_rate_log.log
fi

# =========================================
# Archive Temperature Logs
# =========================================

if [ -f active_logs/temperature_log.log ]; then

    mv active_logs/temperature_log.log \
    archived_logs/temperature_$timestamp.log

    touch active_logs/temperature_log.log
fi

# =========================================
# Archive Water Usage Logs
# =========================================

if [ -f active_logs/water_usage_log.log ]; then

    mv active_logs/water_usage_log.log \
    archived_logs/water_usage_$timestamp.log

    touch active_logs/water_usage_log.log
fi

echo "=================================="
echo "Log rotation completed sucessfully"
echo "=================================="
# =========================================

# Kethia writes here
