import os, sys, time, re
print time.localtime()[:6], sys.argv
 
FILES = [
	# blackbox menus
	[ '../.blackbox/menu', r'.+submenu.+CAD.+|.+kicad.+', '/tmp/kicad.bbmenu' ],
	[ '../.blackbox/menu', r'.+eclipse.+', 'tmp/eclipse.menu' ],
	# azlin files
	## vars
	[ 'azlin/mk/dirs.mk', r'GZ = .+', 'tmp/azlin_GZ' ],
	[ 'azlin/mk/dirs.mk', r'TC = .+', 'tmp/azlin_TC' ],
	[ 'azlin/mk/dirs.mk', r'SRC = .+', 'tmp/azlin_SRC' ],
	[ 'azlin/mk/dirs.mk', r'TMP = .+', 'tmp/azlin_TMP' ],
	[ 'azlin/mk/dirs.mk', r'BUILD = .+', 'tmp/azlin_BUILD' ],
	[ 'azlin/mk/dirs.mk', r'ROOT = .+', 'tmp/azlin_ROOT' ],
	[ 'azlin/mk/dirs.mk', r'BOOT = .+', 'tmp/azlin_BOOT' ],
	[ 'azlin/mk/dirs.mk', r'DIRS = .+|.+\$\(PACK\)', 'tmp/azlin_DIRS' ],
	[ 'azlin/mk/head.mk', r'APP = .+|.*\[APP\].+', 'tmp/azlin_APP' ],
	## versions
	[ 'azlin/mk/versions.mk', 
	r'# cross.+|BIN.+|GCC.+|GMP.+|MPC.+|MPFR.+|ISL.+|CLOOG.+|# 2\.25.+|# 0\.14.+|# 4\.9.+', 
	'tmp/azlin_versions.cross' ],
	[ 'azlin/mk/versions.mk', 
	r'# core.*|KERNEL.+|ULIBC.+|BUSYBOX.+|# 2\.6.+|#1\.22.+', 
	'tmp/azlin_versions.core' ],
	[ 'azlin/mk/versions.mk', 
	r'# boot.*|SYSLINUX.+|UBOOT.+', 
	'tmp/azlin_versions.boot' ],
	[ 'azlin/mk/versions.mk', 
	r'# libs.*|## SDL.*|## extra.*|## math libs.*|SDL.+|FREETYPE.+|ZLIB.+|PNG.+|PCRE.+|BLAS.+|LAPACK.+', 
	'tmp/azlin_versions.libs' ],
]


for i in FILES:
	F = open(i[2], 'w')
	for j in re.findall(i[1], open(i[0]).read()):
		print j
		print >> F, j
	F.close()
