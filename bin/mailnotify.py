#!/usr/bin/env python2


import pynotify
import time
import subprocess
pynotify.init("Basic")
while True:
    mails = subprocess.check_output(['/home/jonathan/bin/mailmon'])
    if int(mails) > 0:
        n = pynotify.Notification("You have mail!", mails + "unread messages")
        n.show()
    time.sleep(60*5)
print mails
