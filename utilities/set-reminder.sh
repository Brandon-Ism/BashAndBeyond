#!/bin/bash

# Function to check if necessary packages are installed.
is_installed() {
    if ! command -v $1  &> /dev/null # Checks if program passed as '$1', is in path and can be executed.
                                     # '&> /dev/null' redirects stdout and stderr to /dev/null to supress any output, for a clean running script.
    then 
        echo "$1 could not be found, attemtping to install..."
        sudo apt-get install -y $1 # Installs passed program.
    fi # End 'if'.
}

# Pass 'libnotify_bin' to function to check if installed.
is_installed libnotify_bin #libnotify_bin proviced 'notify-send' command.

# Check if 'at' is installed and daemon is running
is_installed at
if ! systemctl i-active --quiet atd; then # Checks if 'atd' daemon is running
                                          # 'atd' schedules commands to be run at a specified time.
    echo "at daemon is not currently active, attempting to start up..."
    sudo systemctl enable -now atd # If dameon is not curr. active, enables and starts. 
fi

