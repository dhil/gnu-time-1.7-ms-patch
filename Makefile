# Makefile.in generated automatically by automake 1.0 from Makefile.am

# Copyright (C) 1994, 1995, 1996 Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy, distribute and modify it.


SHELL = /bin/sh

srcdir = .
top_srcdir = .

prefix = /home/dhil/.local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/share/info
mandir = ${prefix}/share/man
includedir = ${prefix}/include
oldincludedir = /usr/include

pkgdatadir = $(datadir)/time
pkglibdir = $(libdir)/time
pkgincludedir = $(includedir)/time

top_builddir = .

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
transform = s,x,x,

bin_PROGRAMS = time
info_TEXINFOS = time.texi
time_SOURCES = time.c getopt.c getopt1.c error.c resuse.c version.c \
	getopt.h getpagesize.h resuse.h port.h wait.h
EXTRA_DIST = texinfo.tex

DISTCLEANFILES = stamp-v version.c
mkinstalldirs = $(top_srcdir)/mkinstalldirs
PROGRAMS = $(bin_PROGRAMS)


CC = gcc
LEX = @LEX@
YACC = @YACC@

DEFS = -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DSTDC_HEADERS=1 -DHAVE_SYS_WAIT_H=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_UNISTD_H=1 -DHAVE_STRING_H=1 -DRETSIGTYPE=void -DHAVE_TIMEVAL=1 -DHAVE_VPRINTF=1 -DHAVE_WAIT3=1 -DHAVE_STRERROR=1 -DHAVE_GETPAGESIZE=1 -I. -I$(srcdir) 
CPPFLAGS = 
CFLAGS = -g -O2
LDFLAGS = 
LIBS = 

COMPILE = $(CC) -c $(DEFS) $(INCLUDES) $(CPPFLAGS) $(CFLAGS)
LINK = $(CC) $(LDFLAGS) -o $@
time_OBJECTS = time.o getopt.o getopt1.o error.o resuse.o version.o
EXTRA_time_SOURCES =
time_LDADD = $(LDADD)

MAKEINFO = makeinfo
TEXI2DVI = texi2dvi
INFOS = time.info*
INFO_DEPS = time.info
DVIS = time.dvi
TEXINFOS = time.texi

DIST_COMMON = README AUTHORS COPYING ChangeLog INSTALL Makefile.am \
Makefile.in NEWS README configure configure.in install-sh mdate-sh \
mkinstalldirs stamp-vti texinfo.tex version.texi


PACKAGE = time
VERSION = 1.7

DISTFILES = $(DIST_COMMON) $(SOURCES) $(BUILT_SOURCES) $(HEADERS) \
	$(TEXINFOS) $(INFOS) $(MANS) $(EXTRA_DIST) $(DATA)
DEP_DISTFILES = $(DIST_COMMON) $(SOURCES) $(BUILT_SOURCES) $(HEADERS) \
	$(TEXINFOS) $(INFO_DEPS) $(MANS) $(EXTRA_DIST) $(DATA)

TAR = tar
SOURCES = $(time_SOURCES)
OBJECTS = $(time_OBJECTS)

default: all


$(srcdir)/Makefile.in: Makefile.am configure.in
	cd $(srcdir) && automake Makefile

# For an explanation of the following Makefile rules, see node
# `Automatic Remaking' in GNU Autoconf documentation.
Makefile: Makefile.in config.status
	CONFIG_FILES=$@ CONFIG_HEADERS= ./config.status
config.status: configure
	./config.status --recheck
$(srcdir)/configure: configure.in $(ACLOCAL) $(CONFIGURE_DEPENDENCIES)
	cd $(srcdir) && autoconf

mostlyclean-binPROGRAMS:

clean-binPROGRAMS:
	rm -f $(bin_PROGRAMS)

distclean-binPROGRAMS:

maintainer-clean-binPROGRAMS:

install-binPROGRAMS: $(bin_PROGRAMS)
	$(mkinstalldirs) $(bindir)
	list="$(bin_PROGRAMS)"; for p in $$list; do \
	  if test -f $$p; then \
	    $(INSTALL_PROGRAM) $$p $(bindir)/`echo $$p|sed '$(transform)'`; \
	  else :; fi; \
	done

uninstall-binPROGRAMS:
	list="$(bin_PROGRAMS)"; for p in $$list; do \
	  rm -f $(bindir)/`echo $$p|sed '$(transform)'`; \
	done

.c.o:
	$(COMPILE) $<

mostlyclean-compile:
	rm -f *.o core

clean-compile:

distclean-compile:
	rm -f *.tab.c

maintainer-clean-compile:

time: $(time_OBJECTS) $(time_DEPENDENCIES)
	$(LINK) $(time_OBJECTS) $(time_LDADD) $(LIBS)

version.texi: stamp-vti

stamp-vti: time.texi $(top_srcdir)/configure.in
	echo "@set UPDATED `cd $(srcdir) \
	  && $(SHELL) ./mdate-sh time.texi`" > vti.tmp
	echo "@set EDITION $(VERSION)" >> vti.tmp
	echo "@set VERSION $(VERSION)" >> vti.tmp
	if cmp -s vti.tmp $(srcdir)/version.texi; then \
	  rm vti.tmp;			\
	else					\
	  mv vti.tmp $(srcdir)/version.texi; \
	fi
	echo timestamp > $(srcdir)/stamp-vti

mostlyclean-vti:
	rm -f vti.tmp

clean-vti:

distclean-vti:

maintainer-clean-vti:
	rm -f stamp-vti version.texi

time.info: time.texi version.texi


.texi.info:
	$(MAKEINFO) -I$(srcdir) $< -o $(srcdir)/$@

.texi.dvi:
	TEXINPUTS=$(srcdir):$$TEXINPUTS $(TEXI2DVI) $<

install-info: $(INFO_DEPS)
	$(mkinstalldirs) $(infodir)
	for file in $(INFO_DEPS); do		\
	  for ifile in `cd $(srcdir) && echo $$file*`; do \
	    $(INSTALL_DATA) $(srcdir)/$$ifile $(infodir)/$$ifile; \
	  done;					\
	done

uninstall-info:
	cd $(srcdir) && for file in *.info*; do	\
	  rm -f $(infodir)/$$file; \
	done

mostlyclean-info:
	rm -f time.aux time.cp time.cps time.dvi time.fn time.fns time.ky \
	  time.log time.pg time.toc time.tp time.vr time.op

clean-info:

distclean-info:

maintainer-clean-info:
	rm -f $(INFOS)

ID: $(HEADERS) $(SOURCES)
	here=`pwd` && cd $(srcdir) && mkid -f$$here/ID $(SOURCES) $(HEADERS)

tags: TAGS

TAGS: $(HEADERS) $(SOURCES) $(TAGS_DEPENDENCIES)
	here=`pwd` && cd $(srcdir) && etags $(ETAGS_ARGS) $(SOURCES) $(HEADERS) -o $$here/TAGS

mostlyclean-tags:

clean-tags:

distclean-tags:
	rm -f TAGS ID

maintainer-clean-tags:

distdir = $(PACKAGE)-$(VERSION)
# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	rm -rf $(distdir)
	$(TAR) zxf $(distdir).tar.gz
	mkdir $(distdir)/=build
	mkdir $(distdir)/=inst
	dc_install_base=`cd $(distdir)/=inst && pwd`; \
	cd $(distdir)/=build \
	  && ../configure --srcdir=.. --prefix=$$dc_install_base \
	  && $(MAKE) \
	  && $(MAKE) check \
	  && $(MAKE) install \
	  && $(MAKE) installcheck \
	  && $(MAKE) dist
	rm -rf $(distdir)
	@echo "========================"; \
	echo "$(distdir).tar.gz is ready for distribution"; \
	echo "========================"
dist: distdir
	chmod -R a+r $(distdir)
	$(TAR) chozf $(distdir).tar.gz $(distdir)
	rm -rf $(distdir)
distdir: $(DEP_DISTFILES)
	rm -rf $(distdir)
	mkdir $(distdir)
	chmod 777 $(distdir)
	@for file in `cd $(srcdir) && echo $(DISTFILES)`; do \
	  test -f $(distdir)/$$file \
	  || ln $(srcdir)/$$file $(distdir)/$$file 2> /dev/null \
	  || cp -p $(srcdir)/$$file $(distdir)/$$file; \
	done
error.o: error.c
getopt.o: getopt.c getopt.h
getopt1.o: getopt1.c getopt.h
resuse.o: resuse.c wait.h port.h resuse.h
time.o: time.c wait.h port.h resuse.h getpagesize.h
version.o: version.c

info: $(INFO_DEPS)

dvi: $(DVIS)

check: all

installcheck:

install-exec: install-binPROGRAMS

install-data: install-info

install: install-exec install-data all
	@:

uninstall: uninstall-binPROGRAMS uninstall-info

all: $(INFO_DEPS) $(PROGRAMS) Makefile

install-strip:
	$(MAKE) INSTALL_PROGRAM='$(INSTALL_PROGRAM) -s' install
installdirs:
	$(mkinstalldirs)  $(bindir) $(infodir)


mostlyclean-generic:
	test -z "$(MOSTLYCLEANFILES)" || rm -f $(MOSTLYCLEANFILES)

clean-generic:
	test -z "$(CLEANFILES)" || rm -f $(CLEANFILES)

distclean-generic:
	rm -f Makefile $(DISTCLEANFILES)
	rm -f config.cache config.log $(CONFIG_HEADER) stamp-h

maintainer-clean-generic:
	test -z "$(MAINTAINERCLEANFILES)" || rm -f $(MAINTAINERCLEANFILES)
	test -z "$(BUILT_SOURCES)" || rm -f $(BUILT_SOURCES)
mostlyclean:  mostlyclean-binPROGRAMS mostlyclean-compile \
		mostlyclean-vti mostlyclean-info mostlyclean-tags \
		mostlyclean-generic

clean:  clean-binPROGRAMS clean-compile clean-vti clean-info clean-tags \
		clean-generic mostlyclean 

distclean:  distclean-binPROGRAMS distclean-compile distclean-vti \
		distclean-info distclean-tags distclean-generic clean 
	rm -f config.status

maintainer-clean:  maintainer-clean-binPROGRAMS maintainer-clean-compile \
		maintainer-clean-vti maintainer-clean-info \
		maintainer-clean-tags maintainer-clean-generic \
		distclean 
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."
	rm -f config.status

.PHONY: default mostlyclean-binPROGRAMS distclean-binPROGRAMS \
clean-binPROGRAMS maintainer-clean-binPROGRAMS uninstall-binPROGRAMS \
install-binPROGRAMS mostlyclean-compile distclean-compile clean-compile \
maintainer-clean-compile mostlyclean-vti distclean-vti clean-vti \
maintainer-clean-vti install-info uninstall-info mostlyclean-info \
distclean-info clean-info maintainer-clean-info tags mostlyclean-tags \
distclean-tags clean-tags maintainer-clean-tags distdir info dvi check \
installcheck install-exec install-data install uninstall all \
installdirs mostlyclean-generic distclean-generic clean-generic \
maintainer-clean-generic clean mostlyclean distclean maintainer-clean

version.c: stamp-v
stamp-v: Makefile
	rm -f t-version.c
	echo 'const char *version_string = "'GNU time 1.7.2 ms-patch'";' \
		> t-version.c
	if cmp -s version.c t-version.c; then	\
	  rm t-version.c;			\
	else					\
	  mv t-version.c version.c;		\
	fi
	echo timestamp > $@
.SUFFIXES:
.SUFFIXES: .c .o .texi .info .dvi

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
