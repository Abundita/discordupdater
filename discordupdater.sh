#!/bin/bash
#  ------------------------------------------------------------
#  |~~\~|~/~~\ /~~/~~\ |~~\|~~\   |   ||~~\|~~\  /\~~|~~|~~|~~\
#  |   || '--.|  |    ||__/|   |  |   ||__/|   |/__\ |  |--|__/  
#  |__/_|_\__/ \__\__/ |  \|__/    \_/ |   |__//    \|  |__|  \  
#  --------------------------------------------------------------

# Read the file into a variable
json=$(cat /opt/discord/resources/build_info.json)

# Extract the version field from the JSON using grep and sed
version=$(echo $json | grep -o '"version": "[^"]*"' | sed 's/"version": "\(.*\)"/\1/')

# Increment the last number in the version string
new_version=$(echo $version | awk -F. '{$NF = $NF + 1; print $0}' OFS=.)

# Replace the version field in the JSON with the new version
json=$(echo $json | sed "s/\"version\": \"$version\"/\"version\": \"$new_version\"/")

# Write the modified JSON back to the file
echo "$json" > /opt/discord/resources/build_info.json

# End every discord instance
killall Discord
#END
