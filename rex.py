import os, sys, time, re
print time.localtime()[:6], sys.argv
 
FILES = [
	['../.blackbox/menu',r'.+submenu.+CAD.+|.+kicad.+','/tmp/kicad.bbmenu']
]

# 	'ide/eclipse_blackbox.menu':[
# 		('../.blackboxmenu', r'\[begin\].+|.+eclipse.+')
# 	],
# 	'azlin/doc/dirs.mk':[('azlin/mk/dirs.mk',r'.+')],
# 	'azlin/doc/gz.dirs':[('azlin/mk/dirs.mk',r'GZ .+')],
# 	'azlin/doc/src.dirs':[('azlin/mk/dirs.mk',r'SRC .+')],
# 	'azlin/doc/tmp.dirs':[('azlin/mk/dirs.mk',r'TMP .+')],
# 	'azlin/doc/build.dirs':[('azlin/mk/dirs.mk',r'BUILD .+')],
# 	'azlin/doc/tc.dirs':[('azlin/mk/dirs.mk',r'TC .+')],
# 	'azlin/doc/root.dirs':[('azlin/mk/dirs.mk',r'ROOT .+'),
# 						   ('azlin/mk/dirs.mk',r'BOOT .+')],
# 	'azlin/doc/dirs.dirs':[('azlin/mk/dirs.mk',r'DIRS .+')],
# 	'azlin/doc/app.mk':[('azlin/mk/head.mk',r'APP .+')]

for i in FILES:
	F=open(i[2],'w')
	for j in re.findall(i[1],open(i[0]).read()):
		print j
		print >>F,j
	F.close()

# for i in FILES:
# 	try:
# 		F = open(i, 'w')
# 		for j in FILES[i]:
# 			FN, REX = j
# 			for k in re.findall(REX, open(FN).read()):
# 				print >> F, k
# 		F.close()
# 	except:
# 		print 'error',i
# 
# NEWFILES = [
# 	('azlin/mk/versions.mk','azlin/doc/versions.cross',r'BINUTILS.+'),
# 	('azlin/mk/versions.mk','azlin/doc/versions.cross',r'(GMP|MPFR|MPC).+'),
# 	('azlin/mk/versions.mk','azlin/doc/versions.cross',r'GCC.+'),
# 
# 	('azlin/mk/versions.mk','azlin/doc/versions.core',r'(KERNEL|ULIBC|BUSYBOX).+'),
# 
# 	('azlin/mk/versions.mk','azlin/doc/versions.boot',r'(UBOOT|SYSLINUX|GRUB).+'),
# 
# 	('azlin/mk/versions.mk','azlin/doc/versions.libs',r'(SDL).+'),
# 
# 	('/home/ponyatov/.blackbox/menu','tmp/kicad.bbmenu',r'\[submenu\].+CAD.+|.+kicad.+'),
# ]
# NEWTARGS={}
# for j in NEWFILES:
# 	try:
# 		NEWTARGS[j[1]].append((j[0],j[-1]))
# 	except:
# 		NEWTARGS[j[1]]=[(j[0],j[-1])]
# for k in NEWTARGS:
# 	F=open(k,'w')
# 	for x,y in NEWTARGS[k]:
# 		for z in open(x).readlines():
# 			if re.match(y,z):
# 				print >>F,z[:-1]
# 	F.close()
