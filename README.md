# Discord Updater
Automatically updates the discord version when a new version comes 

# Errors

If you get an error stating that jq is not a valid command make sure to install jq 
which you can do by either using apt or pacman

if you get an error that a directory isn't valid then you need to edit the bash script and change the directory in question to the one
corresponding to your system. You can run ```file $(which discord)``` to find the discord directory and just add ```/resources/build_info.json``` to it.
In the end getting something like ```/opt/discord/resources/build_info.json```.


