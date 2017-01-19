import subprocess

hostname = subprocess.run(['hostname'], check=True,
                          stdout=subprocess.PIPE).stdout
# print(hostname.decode())
localpackages = open(hostname.decode().strip())


current = subprocess.run(['pacman', '-Q'], check=True,
                          stdout=subprocess.PIPE).stdout

current = current.decode().split('\n')

hostname = hostname.strip()
if hostname.decode() == 'tardis':
    print('knine')
    remotepackages = open('knine')
else:
    print('tardis')
    remotepackages = open('tardis')

remote = []
for p in remotepackages.readlines():
   remote.append(p.strip())

for p in localpackages.readlines():
   package = p[:p.index(' ')]
   print(p.strip())
   if p.strip() not in remote:
       subprocess.run(['sudo', 'pacman', '-R',  package])


local = []
for p in localpackages.readlines():
    local.append(p.strip())


for p in remote:
    package = p[:p.index(' ')]
    if p.strip() not in local:
        subprocess.run(['pacaur', '-S', '--needed', package])



for p in current:
   package = p[:p.index(' ')]
   print(p.strip())
   if (p.strip() not in remote) and (p.strip() not in local):
       subprocess.run(['sudo', 'pacman', '-R',  package])
