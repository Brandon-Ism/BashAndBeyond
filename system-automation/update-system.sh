#!/bin/bash

# This script is mean to update and upgrade the system, as well as cleanup any unnecessary packages that are no longer needed.

# Main function

update_sys() {
    echo "Updating package lists..."
    sudo apt-get update

    echo "Upgrading packages..."
    sudo apt-get upgrade -y


    echo "Cleaning up unnecessary packages..."
    sudo apt-get autoremove -y
    sudo apt-get autoclean -y

    echo "System update, upgrade, and cleaning complete!"
}

# Run the main function
update_sys