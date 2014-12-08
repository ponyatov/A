import os, sys, time, re
print time.localtime()[:6], sys.argv

FILES = {
	'ide/eclipse_blackbox.menu':[
		(
			'../.blackboxmenu',
			r'\[begin\].+|.+eclipse.+'
		)
	]
}

for i in FILES:
	F = open(i, 'w')
	for j in FILES[i]:
		FN, REX = j
		for k in re.findall(REX, open(FN).read()):
			print >> F, k
	F.close()
