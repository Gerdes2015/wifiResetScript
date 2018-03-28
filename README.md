# wifiResetScript
Decription:
Have you ever had trouble getting to a wifi login page? I did after trying to connect to gogo internet on my company laptop while flying on American Airlines. I tried forcing redirect through a few known google servers, but no avail. Also restarted laptop several times. Still no solution. I was able to make it work just fine on my phone, so it might have been because it was a company laptop. Either way, this seems to be the definative way to correct the issue. I was sure I'd run into this in the future again so I wrote a simple script to run next time. *VERY* open to suggestions on making this better - even though its a *VERY* simple script

**Mind you it does COMPLETELY wipe your wifi settings** This means previous wifi networks will require you to input your password again. 

What it does: 
1.) Grabs wifi preferences from mac os /Library/Preferences/SystemConfiguration/ directory and moves five files to ~/Downloads  directory

2.) Restarts machine for changes to take effect

Expected Result:
User should be able to access required wifi login page either:
1.) Immediatly with no action required for user
2.) After user types "8.8.8.8" or similar to force redirect to the required wifi login page

