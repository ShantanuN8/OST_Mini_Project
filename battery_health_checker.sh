#!/bin/bash

# Get battery information
BATTERY=$(upower -e | grep BAT)

if [ -z "$BATTERY" ]; then
    echo "No battery found."
    exit 1
fi

# Get battery details
BATTERY_INFO=$(upower -i "$BATTERY")
BATTERY_PERCENTAGE=$(echo "$BATTERY_INFO" | grep "percentage" | awk '{print $2}')
BATTERY_STATUS=$(echo "$BATTERY_INFO" | grep "state" | awk '{print $2}')
BATTERY_HEALTH=$(echo "$BATTERY_INFO" | grep "health" | awk '{print $2}')

# Output the results
echo "Battery Percentage: $BATTERY_PERCENTAGE"
echo "Battery Status: $BATTERY_STATUS"
echo "Battery Health: $BATTERY_HEALTH"

# Check battery health status
if [[ "$BATTERY_HEALTH" == "good" ]]; then
    echo "Battery is in good condition."
elif [[ "$BATTERY_HEALTH" == "warning" ]]; then
    echo "Battery health is warning!"
else
    echo "Battery health is critical!"
fi
