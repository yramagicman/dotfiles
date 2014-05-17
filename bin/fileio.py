try:
    f=open('nettest.sh', 'r')
    for l in f:
        print l
    f.close()
except:
    pass

try:
    f=open('blah.txt', 'r')
    f.close()
except:
    print "oops"
