#!/bin/bash

# =========================================
# KNH Hospital Analysis Script
# =========================================

# =========================================
# Member 5 - Favour Nziza
# process_vitals()
# =========================================

process_vitals() {

  echo "=================================="
    echo "Processing critical patient vitals..."
    echo "=================================="

    mkdir -p reports

    grep "CRITICAL" active_logs/heart_rate_log.log active_logs/temperature_log.log 2>/dev/null | \
    awk -F'|' '
    {
        printf "Timestamp: %s | Device_ID: %s | Value: %s\n",
        $1, $2, $3
    }
    ' > reports/critical_alerts.txt

		    echo "Critical alerts saved Successfully."

}

# =========================================
# Member 6 - Landry Rwema Irakoze Rwema
# water_audit()
# =========================================

water_audit() {

    # Landry writes here

}

# Execute Functions
process_vitals
water_audit
