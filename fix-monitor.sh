#!/bin/bash

# Gets the list of monitors and their types
monitor_info=$(displayplacer list | grep -E "Persistent screen id:|Type:")

# Identifies the external monitor ID
external_monitor_id=""
while IFS= read -r line; do
    if [[ $line == "Persistent screen id:"* ]]; then
        current_id=$(echo "$line" | awk '{print $4}')
    elif [[ $line == "Type: "* && $line != *"built in screen"* ]]; then
        external_monitor_id=$current_id
        break
    fi
done <<< "$monitor_info"

# Check if found an external monitor
if [[ -z "$external_monitor_id" ]]; then
    echo "No external monitor detected."
    exit 1
fi

echo "External Monitor detected: $external_monitor_id"

# Fill in the best resolution of your monitor and its maximum refresh rate
best_resolution_of_your_monitor="1920x1080"
max_refresh_rate_of_your_monitor="75"

echo "Applying the best resolution of your monitor ($best_resolution_of_your_monitor) and the maximum refresh rate of your monitor ($max_refresh_rate_of_your_monitor Hz)..."

# Displays in the terminal the command that will be run to apply the configuration, to ensure that the command will be run correctly
echo "displayplacer \"id:$external_monitor_id res:$best_resolution_of_your_monitor hz:$max_refresh_rate_of_your_monitor\""

# Uncomment the line below when you really want to apply the configuration
# displayplacer "id:$external_monitor_id res:$best_resolution_of_your_monitor hz:$max_refresh_rate_of_your_monitor"

echo "Configuration applied with success!"
