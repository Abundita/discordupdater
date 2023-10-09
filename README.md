# Discord Updater
An easy and automatic updater of Discord, download the discordupdater.sh file from the provided GitHub repository. To run the script, navigate to the file's location and type:

```sudo ./discordupdater.sh```

# Encountering the "jq not a valid command" error?
Ensure jq is installed on your system. You can install it via apt or pacman, depending on your Linux distribution.

# Error indicating an invalid directory?

Edit the bash script and update the directory path to match your system's. To find your Discord installation directory, use:
```file $(which discord)```

Then, append `/resources/build_info.json` to the directory you've identified. For most users, it might look like `/opt/discord/resources/build_info.json`. However, if you're on Fedora, the JSON file is located in `/usr/lib64/discord/resources/`, not under `/opt`.

# Do not do

Please refrain from running the script unless you're certain your Discord client requires an update. Running it unnecessarily might update the version number to a non-existent version. If this happens, don't panic! Navigate to `/opt/discord/resources/` and manually modify the build_info.json file to restore the original version number.

I hope this script enhances your Discord experience!

# How it works and some notes

The bash script is highly simple. All it does is incriment the version number by one in the json build information file for Discord, which causes it to automatically update. As to why this isn't already done by discrod itself? Who knows.

The script was also made with the help of Chat GPT, although a lot of modifications had to be made for it to work and to discover key user issues and complaints :)
