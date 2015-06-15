import os, sys, time, re
print time.localtime()[:6], sys.argv
 
FILES = [
	# blackbox menus
	[ '../.blackbox/menu', r'.+submenu.+CAD.+|.+kicad.+', '/tmp/kicad.bbmenu' ],
	[ '../.blackbox/menu', r'.+eclipse.+', 'tmp/eclipse.menu' ],
	# ALYEH:Linux files
	## vars
	[ 'L/Makefile', r'.+', 'tmp/L_Makefile.mk' ],
	[ 'L/mk/dirs.mk', r'GZ = .+', 'tmp/L_GZ.mk' ],
	[ 'L/mk/dirs.mk', r'TC = .+', 'tmp/L_TC.mk' ],
	[ 'L/mk/dirs.mk', r'SRC = .+', 'tmp/L_SRC.mk' ],
	[ 'L/mk/dirs.mk', r'TMP = .+', 'tmp/L_TMP.mk' ],
	[ 'L/mk/dirs.mk', r'BUILD = .+', 'tmp/L_BUILD.mk' ],
	[ 'L/mk/dirs.mk', r'ROOT = .+', 'tmp/L_ROOT.mk' ],
	[ 'L/mk/dirs.mk', r'BOOT = .+', 'tmp/L_BOOT.mk' ],
	[ 'L/mk/dirs.mk', r'DIRS = .+|.+\$\(PACK\)', 'tmp/L_DIRS.mk' ],
	[ 'L/mk/head.mk', r'APP = .+|.*\[APP\].+', 'tmp/L_APP.mk' ],
	## versions
	[ 'L/mk/versions.mk', 
	r'# cross.+|BIN.+|GCC.+|GMP.+|MPC.+|MPFR.+|ISL.+|CLOOG.+|# 2\.25.+|# 0\.14.+|# 4\.9.+', 
	'tmp/L_versions.cross' ],
	[ 'L/mk/versions.mk', 
	r'# core.*|KERNEL.+|ULIBC.+|BUSYBOX.+|# 2\.6.+|#1\.22.+', 
	'tmp/L_versions.core' ],
	[ 'L/mk/versions.mk', 
	r'# boot.*|SYSLINUX.+|UBOOT.+', 
	'tmp/L_versions.boot' ],
	[ 'L/mk/versions.mk', 
	r'# libs.*|## SDL.*|## extra.*|## math libs.*|SDL.+|FREETYPE.+|ZLIB.+|PNG.+|PCRE.+|BLAS.+|LAPACK.+', 
	'tmp/L_versions.libs' ],
]


for i in FILES:
	F = open(i[2], 'w')
	for j in re.findall(i[1], open(i[0]).read()):
		print j
		print >> F, j
	F.close()
