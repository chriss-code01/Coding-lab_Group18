#!/bin/bash

# =========================================
# KNH Hospital Administration Script
# =========================================

# =========================================
# Member 1 - Angel Bwiza
# initialize_system()
# =========================================

initialize_system() {

  echo "=================================="
    echo "Initializing KNH environment..."
    echo "=================================="
    if [ ! -d "active_logs" ]; then
        echo "Creating active_logs directory..."
        mkdir active_logs
    else
        echo "active_logs already exists."
    fi
    if [ ! -d "archived_logs" ]; then
        echo "Creating archived_logs directory..."
        mkdir archived_logs
    else
        echo "archived_logs already exists."
    fi
    if [ ! -d "reports" ]; then
        echo "Creating reports directory..."
        mkdir reports
    else
        echo "reports already exists."
    fi
    echo "Environment initialization complete."

}

# =========================================
# Member 2 - Michel Nerlin Cyusa
# secure_data()
# =========================================

secure_data() {

    # Michel writes here

}

# =========================================
# Member 3 - Muragwa Hirwa Christian
# run_system_setup()
# =========================================

run_system_setup() {

    # Christian writes here

}

# Execute Script
run_system_setup
