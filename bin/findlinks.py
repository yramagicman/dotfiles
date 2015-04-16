f = open('./Lecture-notes-and-assignments.html')
links = []
for line in f:
  if '<a href' in line:
    link = line.split('<a href')
    for tag in link:
      if '</a>' in tag:
        link = tag[:tag.index('</a>')]
        link = link[:link.rindex('">')]
        link = link[link.index('=') + 1 :]
        links.append(link)

f.close()
for l in links:
  print l
