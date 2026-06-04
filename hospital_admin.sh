#!/bin/bash

# =========================================
# KNH Hospital Administration Script
# =========================================

# =========================================
# Member 1 - Angel Bwiza
# initialize_system()
# =========================================

initialize_system() {

    # Angel writes here

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

    echo "Security permissions applied."
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
