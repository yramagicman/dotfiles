#!/bin/python2
import pynotify
import commands
import time
pynotify.init("Basic")

n = pynotify.Notification("Update Notifications Active", "" )
n.show()
while True:
    packages = commands.getstatusoutput('pacman -Qu')
    retVal = packages[0]
    packages = packages[1]
    packagecount=len(packages.split('\n'))
    notified = 0
    while retVal == 0 and packagecount > 5 and notified <= 5:
        n = pynotify.Notification("Updates Availible", packages)
        n.show()
        # notify me every five minutes
        notified = notified + 1
        # reset variables, also check to see if update has happened
        time.sleep(60*1)
        packages = commands.getstatusoutput('pacman -Qu')
        retVal = packages[0]
        packages = packages[1]
        packagecount=len(packages.split('\n'))
    time.sleep(60*30)
    packages = 0
    retVal = 0
    packages = 0
    packagecount= 0
