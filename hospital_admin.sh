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
    echo "====================================================="
    echo "Applying security permissions..."
    echo "====================================================="

    # Ensure the target directory exists before running chmod
    if [ -d "active_logs" ]; then
        # Lock down the directory
        chmod 700 active_logs
        
        # Lock down all files inside securely, including hidden ones
        find active_logs -type f -exec chmod 600 {} + 2>/dev/null

        echo "Updated Permissions:"
        ls -ld active_logs
        echo "Directory Contents:"
        ls -l active_logs
    else
        echo "Error: active_logs directory not found."
    fi

    echo "Security permissions applied successful."
}


# =========================================
# Member 3 - Muragwa Hirwa Christian
# run_system_setup()
# =========================================

run_system_setup() {

    initialize_system
    secure_data

    echo "=================================="
    echo "KNH System Environment Secured Successfully"
    echo "Security completed on: $(date)"
    echo "=================================="
}

# Execute Script
run_system_setup
