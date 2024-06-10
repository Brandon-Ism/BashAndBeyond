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


