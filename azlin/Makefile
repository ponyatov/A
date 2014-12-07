# [H]ard[W]are: qemu386 qemuARM qemuMIPS cubie1 rpi

HW = qemu386

# [APP]lication: micro clock

APP = clock

# load extra hw definitions: ARCH CPU ...

include hw/$(HW).mk

# load extra defs for CPU setted in $(HW).mk

include cpu/$(CPU).mk

# load extra defs for ARCHitecture setted in $(CPU).mk

include arch/$(ARCH).mk

# load extra app defs: LIBS APPS ...

include app/$(APP).mk

# build/target triplets

BUILD = $(shell gcc -dumpmachine)

# directories processing

# sw sources mirror archive in .tar.[GZ]

GZ = $(PWD)/gz

# [S]ou[RC]e codes unpacked

SRC = $(PWD)/src

# [T]e[MP] build dirs

TMP = $(PWD)/tmp

# cross-compiler [T]ool[C]hain

TC = $(PWD)/$(BUILD)

# target root filesystem

ROOT = $(PWD)/$(HW)-$(APP)
BOOT = $(ROOT)/boot

DIRS = $(GZ) $(SRC) $(TMP) $(TC) $(ROOT) $(BOOT)

.PHONY: dirs
dirs:
	mkdir -p $(DIRS)
# package versions

# cross compiler

BINUTILS_VER = 2.24
GMP_VER = 5.1.3
MPFR_VER = 3.1.2
MPC_VER = 1.0.2
GCC_VER = 4.9.1
# 4.9.2 not used: bug arm/62098

# core

KERNEL_VER = 3.16.3
# 2.6.x not used: bug eth/rtl8139
ULIBC_VER = 0.9.33.2
BUSYBOX_VER = 1.22.1

# loaders

# libs

# extra
# software packages

# [c]ross [c]ompiler

BINUTILS	= binutils-$(BINUTILS_VER)
GMP			= gmp-$(GMP_VER)
MPFR		= mpfr-$(MPFR_VER)
MPC = mpc-$(MPC_VER)
GCC = gcc-$(GCC_VER)

# core

KERNEL = linux-$(KERNEL_VER)
ULIBC = uClibc-$(ULIBC_VER)
BUSYBOX = busybox-$(BUSYBOX_VER)

# loaders

# libs

# extra
# commands macros

WGET = wget -N -P $(GZ)

CPU_CORES ?= $(shell grep processor /proc/cpuinfo |wc -l) 

MAKE = make -j$(CPU_CORES)
# download sw packages sources to gz/

.PHONY: gz
gz:
	make gz_cc
	make gz_core
	
.PHONY: gz_cc
gz_cc:
	$(WGET) http://ftp.gnu.org/gnu/binutils/$(BINUTILS).tar.bz2
	$(WGET) http://gcc.skazkaforyou.com/releases/$(GCC)/$(GCC).tar.bz2
	$(WGET) ftp://ftp.gmplib.org/pub/gmp/$(GMP).tar.bz2
	$(WGET) http://www.mpfr.org/mpfr-current/$(MPFR).tar.bz2
	$(WGET) http://www.multiprecision.org/mpc/download/$(MPC).tar.gz
		
.PHONY: gz_core
gz_core:
	$(WGET) http://www.uclibc.org/downloads/$(ULIBC).tar.xz
	$(WGET) http://busybox.net/downloads/$(BUSYBOX).tar.bz2
