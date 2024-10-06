# Makefile for MLinux More LocaleSelector

CHMOD = chmod
CP = cp
DOTNET = dotnet
MKDIR = mkdir
RM = rm

.PHONY : build all clean

build :
	$(DOTNET) publish -o dist -c Release -a x64 --os linux
	$(CP) -r select-locale.sh dist/select-locale.sh
	$(CHMOD) +x dist/select-locale.sh

clean :
	$(DOTNET) clean
	$(RM) -r -f dist bin obj

install : build
	$(MKDIR) -p ../config/includes.chroot_after_packages/opt/LocaleSelector/
	$(CP) -r dist/* ../config/includes.chroot_after_packages/opt/LocaleSelector/

all : build
