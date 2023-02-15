# Discord Updater
Automatically updates the discord version when ran

To get the bash script, download the discordupdater.sh file from this GitHub, you can run it by typing sudo ./discordupdater.sh in the file location you have downloaded it

# Errors

If you get an error stating that jq is not a valid command make sure to install jq 
which you can do by either using apt or pacman

if you get an error that a directory isn't valid then you need to edit the bash script and change the directory in question to the one
corresponding to your system. You can run ```file $(which discord)``` to find the discord directory and just add ```/resources/build_info.json``` to it.
In the end getting something like ```/opt/discord/resources/build_info.json```. If you are using Fedora the JSON file is in /usr/lib64/discord/resources/ and not under /opt.

# Do not do

Don't use the script if your discord client doesn't have to update as it will change the number to a version that does not yet exist,
you can fix this by manually going over to ```/opt/discord/resources/``` and editing the ```/build_info.json``` file by seting the version number back to its original version.

Hope the script is of help!

