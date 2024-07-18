#!/bin/bash

# Ask for the port number
read -p "Enter the port number: " port

# Find processes using the specified port
processes=$(lsof -i :$port -t)

if [ -z "$processes" ]; then
    echo "No processes found using port $port"
    exit 1
fi

# Show the processes
echo "Processes using port $port:"
ps -f -p $processes

# Ask for confirmation
read -p "Do you want to kill these processes? (y/n): " confirm

if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
    # Kill the processes
    kill -9 $processes
    echo "Processes killed."
else
    echo "Operation canceled."
fi
