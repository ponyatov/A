# -*- coding: utf-8 -*-
S='''
'''

T='''
'''

import os,sys,re,time

print time.localtime()[:6],sys.argv

for i in [
    (r'\n\n+',r'\n</segment><segment>\n')
]:
    S=re.sub(i[0],i[1],S)

print
print '''
<?xml version="1.0" encoding="utf-8"?>
<xliff xmlns="urn:oasis:names:tc:xliff:document:1.2" version="1.2">
<file>
<body>
'''
print S
print '''
</body>
</file>
</xliff>
'''

for i in [
        ('<source>.*?</source>',''),
        ('<trans-unit>(.+?)</trans-unit>',r'\section{\1}'),
        ('<target>(.*)</target>',r'\1'),
        (' – ',r'\ --- ')
]:
    T=re.sub(i[0],i[1],T)
print T
