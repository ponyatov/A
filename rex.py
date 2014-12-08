import os, sys, time, re
print time.localtime()[:6], sys.argv

FILES = {
# 	'ide/eclipse_blackbox.menu':[
# 		('../.blackboxmenu', r'\[begin\].+|.+eclipse.+')
# 	],
	'../azlin/doc/dirs.mk':[('../azlin/mk/dirs.mk',r'.+')],
	'../azlin/doc/gz.dirs':[('../azlin/mk/dirs.mk',r'GZ .+')],
	'../azlin/doc/src.dirs':[('../azlin/mk/dirs.mk',r'SRC .+')],
	'../azlin/doc/tmp.dirs':[('../azlin/mk/dirs.mk',r'TMP .+')],
	'../azlin/doc/build.dirs':[('../azlin/mk/dirs.mk',r'BUILD .+')],
	'../azlin/doc/tc.dirs':[('../azlin/mk/dirs.mk',r'TC .+')],
	'../azlin/doc/root.dirs':[('../azlin/mk/dirs.mk',r'ROOT .+'),
						   ('../azlin/mk/dirs.mk',r'BOOT .+')],
	'../azlin/doc/dirs.dirs':[('../azlin/mk/dirs.mk',r'DIRS .+')],
	'../azlin/doc/app.mk':[('../azlin/mk/head.mk',r'APP .+')]
}

for i in FILES:
	F = open(i, 'w')
	for j in FILES[i]:
		FN, REX = j
		for k in re.findall(REX, open(FN).read()):
			print >> F, k
	F.close()
