import subprocess
import fileinput
for line in fileinput.input():
    grep = subprocess.call(['wget', 'http://pdos.csail.mit.edu/6.824-2002/lecnotes/' + line.strip()])
    #grep = subprocess.Popen(['curl', 'http://pdos.csail.mit.edu/6.824-2002/lecnotes/' + line.strip()],  stdout=subprocess.PIPE)
    #wc = subprocess.Popen(['tee', line], stdin=grep.stdout, stdout=subprocess.PIPE)
    #grep.stdout.close()
