#!/usr/bin/env python
# https://en.wikipedia.org/wiki/Sylvester%27s_sequence

P=[1,1]

for i in range(11):
    N=reduce(lambda a,b:a*b,P)+1
    P.append(N)
    print 'P',P

print '--- len[P] ---'
print map(lambda x:len(str(x)),P)
