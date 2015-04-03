shows = open('tvshows', 'r')
sizes= []
for line in shows:
    l= line.split('\t')
    if int(l[0]) > 100:
        sizes.append(l[0])
print sizes
total = 0
for i in sizes:
    total = total + int(i)
print total / int(len(sizes))
