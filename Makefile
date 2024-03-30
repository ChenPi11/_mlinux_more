# Makefile for MLinux More LiveCD

LIVE_BUILD = lb
SUDO = sudo

DEBIAN_CHECKER = check-debian.sh

all : check-debian build

check-debian : $(DEBIAN_CHECKER)
	./$^

clean : check-debian
	$(SUDO) $(LIVE_BUILD) clean

configure : check-debian config
	$(LIVE_BUILD) config

build : check-debian clean configure
	$(SUDO) $(LIVE_BUILD) build
