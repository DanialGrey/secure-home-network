#!/bin/bash

LOG_FILE="./maintenance_log.yaml"

# Prompt for task
echo "Enter maintenance task performed:"
read task

# Get current timestamp
timestamp=$(date '+%Y-%m-%d %H:%M:%S')
user=$(whoami)

# Append to YAML file
{
	echo "- date: \"$timestamp\""
	echo "  user: \"$user\""
	echo "  task: \"$task\""
} >> "$LOG_FILE"

echo "✅ Logged to YAML: \"$task\" on $timestamp"
