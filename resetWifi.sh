#!/bin/bash
#Removes current network preference settings
#Must restart computer after running script

:' Sample if statement for reference
Want to add in ability to only run rm for wifiBackup if files exit already
Alternative is to overwrite the files
if [[ $REPLY = y ]]; then
	read -p "$kafka_command_1 | grep " grepVar
	kafka_command_2="$kafka_command_1 | grep $grepVar"
else
	kafka_command_2=$kafka_command_1
fi
'

cd /Users/alexander.j.gerdes/Documents/wifiBackup
sudo rm com.apple.airport.preferences.plist
sudo rm com.apple.network.eapolclient.configuration.plist
sudo rm com.apple.wifi.message-tracer.plist
sudo rm NetworkInterfaces.plist
sudo rm preferences.plist

cd /Library/Preferences/SystemConfiguration/
sudo mv com.apple.airport.preferences.plist /Users/alexander.j.gerdes/Documents/wifiBackup
sudo mv com.apple.network.eapolclient.configuration.plist /Users/alexander.j.gerdes/Documents/wifiBackup
sudo mv com.apple.wifi.message-tracer.plist /Users/alexander.j.gerdes/Documents/wifiBackup
sudo mv NetworkInterfaces.plist /Users/alexander.j.gerdes/Documents/wifiBackup
sudo mv preferences.plist /Users/alexander.j.gerdes/Documents/wifiBackup

echo "Files transfered to backup folder"
echo "System must now restart"
echo "Restarting in 5 seconds... type [ -c ] to cancel"
sudo shutdown -r 5s
