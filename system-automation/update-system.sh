#!/bin/bash
# The above line tells the system that the script should be run using Bash shell. 

# This script is mean to update and upgrade the system, as well as cleanup any unnecessary packages that are no longer needed.

# Main function

update_sys() {
    echo "Updating package lists..."
    sudo apt-get update 

    echo "Upgrading packages..."
    sudo apt-get upgrade -y # Upgrade all packages to latest versions.

    echo "Performing full distribution upgrade..."
    sudo apt-get dist-upgrade -y # Full upgrade of system, may install/remove oackages as necessary.

    echo "Cleaning up unnecessary packages..."
    sudo apt-get autoremove -y # Removes packages that were installed as dependencies for other packages, but no longer needed.
    sudo apt-get autoclean -y # Cleans the local repository of retrived package files. 

    echo "System update, upgrade, and cleaning complete!"
}

# Run the main function
update_sys