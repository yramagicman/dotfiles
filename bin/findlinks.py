import fileinput
#f = open('./Lecture-notes-and-assignments.html')
links = []
for line in fileinput.input():
  if '<a href' in line:
    link = line.split('<a href')
    for tag in link:
      if '</a>' in tag:
        link = tag[:tag.index('</a>')]
        link = link[:link.rindex('">')]
        link = link[link.index('=') + 2 :]
        links.append(link)

for l in links:
  print l
