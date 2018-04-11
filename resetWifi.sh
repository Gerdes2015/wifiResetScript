#!/bin/bash
#Removes current network preference settings
#Must restart computer after running script
#Will require you put in your password to move these files

cd /

if cd ~/Desktop/wifiBackup ; then
sudo rm com.apple.airport.preferences.plist
sudo rm com.apple.network.eapolclient.configuration.plist
sudo rm com.apple.wifi.message-tracer.plist
sudo rm NetworkInterfaces.plist
sudo rm preferences.plist ; else
cd ~/Desktop
mkdir wifiBackup

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
