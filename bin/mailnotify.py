#!/usr/bin/env python2


import pynotify
import time
import subprocess
pynotify.init("Basic")
while True:
    mails = subprocess.check_output(['/home/jonathan/bin/mailmon'])
    if int(mails) > 0:
        notified = 0
        while notified <= 5 and int(mails) > 0:
            n = pynotify.Notification("You have mail!", mails +
                                      "unread messages")
            n.show()
            subprocess.call(['mplayer', '/home/jonathan/.sounds/beep.mp3',
                             '-really-quiet'])
            time.sleep(60*5)
            notified = notified + 1
            mails = subprocess.check_output(['/home/jonathan/bin/mailmon'])
            print notified
        time.sleep(60*10)
    time.sleep(10)
