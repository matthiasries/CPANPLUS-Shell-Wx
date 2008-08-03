# This Makefile is for the CPANPLUS::Shell::Wx extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.44 (Revision: 54639) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#
#   MakeMaker Parameters:

#     ABSTRACT_FROM => q[lib/CPANPLUS/Shell/Wx.pm]
#     AUTHOR => q[Samuel C. Tyler <skamansam@gmail.com>]
#     NAME => q[CPANPLUS::Shell::Wx]
#     PREREQ_PM => { Wx=>q[0.74], CPANPLUS=>q[0.78] }
#     VERSION_FROM => q[lib/CPANPLUS/Shell/Wx.pm]

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/lib/perl5/5.8.8/i386-linux-thread-multi/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = gcc
CCCDLFLAGS = -fPIC
CCDLFLAGS = -Wl,-E -Wl,-rpath,/usr/lib/perl5/5.8.8/i386-linux-thread-multi/CORE
DLEXT = so
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = gcc
LDDLFLAGS = -shared -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -m32 -march=i386 -mtune=generic -fasynchronous-unwind-tables -L/usr/local/lib
LDFLAGS =  -L/usr/local/lib
LIBC = /lib/libc-2.6.so
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = linux
OSVERS = 2.6.18-53.1.14.el5xen
RANLIB = :
SITELIBEXP = /usr/lib/perl5/site_perl/5.8.8
SITEARCHEXP = /usr/lib/perl5/site_perl/5.8.8/i386-linux-thread-multi
SO = so
VENDORARCHEXP = /usr/lib/perl5/vendor_perl/5.8.8/i386-linux-thread-multi
VENDORLIBEXP = /usr/lib/perl5/vendor_perl/5.8.8


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = CPANPLUS::Shell::Wx
NAME_SYM = CPANPLUS_Shell_Wx
VERSION = 0.01
VERSION_MACRO = VERSION
VERSION_SYM = 0_01
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 0.01
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1
MAN3EXT = 3pm
INSTALLDIRS = site
DESTDIR = 
PREFIX = $(SITEPREFIX)
PERLPREFIX = /usr
SITEPREFIX = /usr
VENDORPREFIX = /usr
INSTALLPRIVLIB = /usr/lib/perl5/5.8.8
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = /usr/lib/perl5/site_perl/5.8.8
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = /usr/lib/perl5/vendor_perl/5.8.8
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = /usr/lib/perl5/5.8.8/i386-linux-thread-multi
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = /usr/lib/perl5/site_perl/5.8.8/i386-linux-thread-multi
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = /usr/lib/perl5/vendor_perl/5.8.8/i386-linux-thread-multi
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = /usr/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = /usr/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = /usr/bin
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = /usr/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = /usr/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = /usr/bin
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = /usr/share/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = /usr/share/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = /usr/share/man/man1
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = /usr/share/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = /usr/share/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = /usr/share/man/man3
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB = /usr/lib/perl5/5.8.8
PERL_ARCHLIB = /usr/lib/perl5/5.8.8/i386-linux-thread-multi
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /usr/lib/perl5/5.8.8/i386-linux-thread-multi/CORE
PERL = /usr/bin/perl
FULLPERL = /usr/bin/perl
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /usr/lib/perl5/5.8.8/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.44
MM_REVISION = 54639

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = CPANPLUS/Shell/Wx
BASEEXT = Wx
PARENT_NAME = CPANPLUS::Shell
DLBASE = $(BASEEXT)
VERSION_FROM = lib/CPANPLUS/Shell/Wx.pm
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = 
MAN3PODS = lib/CPANPLUS/Shell/Wx.pm \
	lib/CPANPLUS/Shell/Wx/PODReader.pm

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)/CPANPLUS/Shell
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/CPANPLUS/Shell

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/CPANPLUS/Shell/Wx.pm \
	lib/CPANPLUS/Shell/Wx/App.pm \
	lib/CPANPLUS/Shell/Wx/Configure.pm \
	lib/CPANPLUS/Shell/Wx/Frame.pm \
	lib/CPANPLUS/Shell/Wx/ModulePanel.pm \
	lib/CPANPLUS/Shell/Wx/ModuleTree.pm \
	lib/CPANPLUS/Shell/Wx/PODReader.pm \
	lib/CPANPLUS/Shell/Wx/UpdateWizard.pm \
	lib/CPANPLUS/Shell/Wx/cpan_connector.pm \
	lib/CPANPLUS/Shell/Wx/help/contents.hhc \
	lib/CPANPLUS/Shell/Wx/help/images/edit_menu.png \
	lib/CPANPLUS/Shell/Wx/help/images/file_menu.png \
	lib/CPANPLUS/Shell/Wx/help/images/help_menu.png \
	lib/CPANPLUS/Shell/Wx/help/images/info_actions.png \
	lib/CPANPLUS/Shell/Wx/help/images/info_contents.png \
	lib/CPANPLUS/Shell/Wx/help/images/info_files.png \
	lib/CPANPLUS/Shell/Wx/help/images/info_info.png \
	lib/CPANPLUS/Shell/Wx/help/images/info_prereqs.png \
	lib/CPANPLUS/Shell/Wx/help/images/info_readme.png \
	lib/CPANPLUS/Shell/Wx/help/images/info_report.png \
	lib/CPANPLUS/Shell/Wx/help/images/info_status.png \
	lib/CPANPLUS/Shell/Wx/help/images/info_tabs.png \
	lib/CPANPLUS/Shell/Wx/help/images/info_validate.png \
	lib/CPANPLUS/Shell/Wx/help/images/mainWindow.png \
	lib/CPANPLUS/Shell/Wx/help/images/menubar.png \
	lib/CPANPLUS/Shell/Wx/help/images/notebook.png \
	lib/CPANPLUS/Shell/Wx/help/images/podreader.png \
	lib/CPANPLUS/Shell/Wx/help/images/searchbar.png \
	lib/CPANPLUS/Shell/Wx/help/images/toolbar.png \
	lib/CPANPLUS/Shell/Wx/help/index.html \
	lib/CPANPLUS/Shell/Wx/help/info_actions.html \
	lib/CPANPLUS/Shell/Wx/help/info_contents.html \
	lib/CPANPLUS/Shell/Wx/help/info_files.html \
	lib/CPANPLUS/Shell/Wx/help/info_info.html \
	lib/CPANPLUS/Shell/Wx/help/info_pane.html \
	lib/CPANPLUS/Shell/Wx/help/info_prereqs.html \
	lib/CPANPLUS/Shell/Wx/help/info_readme.html \
	lib/CPANPLUS/Shell/Wx/help/info_report.html \
	lib/CPANPLUS/Shell/Wx/help/info_status.html \
	lib/CPANPLUS/Shell/Wx/help/info_validate.html \
	lib/CPANPLUS/Shell/Wx/help/menu_edit.html \
	lib/CPANPLUS/Shell/Wx/help/menu_file.html \
	lib/CPANPLUS/Shell/Wx/help/menu_help.html \
	lib/CPANPLUS/Shell/Wx/help/menubar.html \
	lib/CPANPLUS/Shell/Wx/help/notebook.html \
	lib/CPANPLUS/Shell/Wx/help/notebook_actions.html \
	lib/CPANPLUS/Shell/Wx/help/notebook_log.html \
	lib/CPANPLUS/Shell/Wx/help/notebook_modules.html \
	lib/CPANPLUS/Shell/Wx/help/notebook_podreader.html \
	lib/CPANPLUS/Shell/Wx/help/podreader.html \
	lib/CPANPLUS/Shell/Wx/help/preferences.html \
	lib/CPANPLUS/Shell/Wx/help/prefs_build.html \
	lib/CPANPLUS/Shell/Wx/help/prefs_general.html \
	lib/CPANPLUS/Shell/Wx/help/prefs_lib.html \
	lib/CPANPLUS/Shell/Wx/help/prefs_mirrors.html \
	lib/CPANPLUS/Shell/Wx/help/prefs_network.html \
	lib/CPANPLUS/Shell/Wx/help/prefs_paths.html \
	lib/CPANPLUS/Shell/Wx/help/prefs_programs.html \
	lib/CPANPLUS/Shell/Wx/help/prefs_wxcpan.html \
	lib/CPANPLUS/Shell/Wx/help/searchbar.html \
	lib/CPANPLUS/Shell/Wx/help/searching.html \
	lib/CPANPLUS/Shell/Wx/help/symbols.html \
	lib/CPANPLUS/Shell/Wx/help/toolbar.html \
	lib/CPANPLUS/Shell/Wx/help/wxCPAN.hhk \
	lib/CPANPLUS/Shell/Wx/help/wxCPAN.hhp \
	lib/CPANPLUS/Shell/Wx/res/FirstTimeWizard.wxg \
	lib/CPANPLUS/Shell/Wx/res/MainWin.wxg \
	lib/CPANPLUS/Shell/Wx/res/MainWin.xrc \
	lib/CPANPLUS/Shell/Wx/res/PODReader.wxg \
	lib/CPANPLUS/Shell/Wx/res/PrefsWin.wxg \
	lib/CPANPLUS/Shell/Wx/res/PrefsWin.xrc \
	lib/CPANPLUS/Shell/Wx/res/UpdateWizard.wxg \
	lib/CPANPLUS/Shell/Wx/res/addMirror.xrc \
	lib/CPANPLUS/Shell/Wx/res/firsttimewizard.pl \
	lib/CPANPLUS/Shell/Wx/res/splash.bmp \
	lib/CPANPLUS/Shell/Wx/util.pm \
	wxcpan.pl \
	wxpodreader.pl

PM_TO_BLIB = lib/CPANPLUS/Shell/Wx/help/images/searchbar.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/searchbar.png \
	lib/CPANPLUS/Shell/Wx/help/images/file_menu.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/file_menu.png \
	lib/CPANPLUS/Shell/Wx/help/info_validate.html \
	blib/lib/CPANPLUS/Shell/Wx/help/info_validate.html \
	lib/CPANPLUS/Shell/Wx/res/UpdateWizard.wxg \
	blib/lib/CPANPLUS/Shell/Wx/res/UpdateWizard.wxg \
	lib/CPANPLUS/Shell/Wx/help/images/info_report.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/info_report.png \
	lib/CPANPLUS/Shell/Wx/help/prefs_network.html \
	blib/lib/CPANPLUS/Shell/Wx/help/prefs_network.html \
	lib/CPANPLUS/Shell/Wx/help/notebook_modules.html \
	blib/lib/CPANPLUS/Shell/Wx/help/notebook_modules.html \
	lib/CPANPLUS/Shell/Wx/help/info_info.html \
	blib/lib/CPANPLUS/Shell/Wx/help/info_info.html \
	lib/CPANPLUS/Shell/Wx/res/firsttimewizard.pl \
	blib/lib/CPANPLUS/Shell/Wx/res/firsttimewizard.pl \
	lib/CPANPLUS/Shell/Wx/Frame.pm \
	blib/lib/CPANPLUS/Shell/Wx/Frame.pm \
	lib/CPANPLUS/Shell/Wx/help/images/toolbar.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/toolbar.png \
	lib/CPANPLUS/Shell/Wx/help/prefs_general.html \
	blib/lib/CPANPLUS/Shell/Wx/help/prefs_general.html \
	lib/CPANPLUS/Shell/Wx/UpdateWizard.pm \
	blib/lib/CPANPLUS/Shell/Wx/UpdateWizard.pm \
	lib/CPANPLUS/Shell/Wx/help/images/edit_menu.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/edit_menu.png \
	lib/CPANPLUS/Shell/Wx/help/notebook_log.html \
	blib/lib/CPANPLUS/Shell/Wx/help/notebook_log.html \
	lib/CPANPLUS/Shell/Wx/help/info_report.html \
	blib/lib/CPANPLUS/Shell/Wx/help/info_report.html \
	lib/CPANPLUS/Shell/Wx/help/info_contents.html \
	blib/lib/CPANPLUS/Shell/Wx/help/info_contents.html \
	lib/CPANPLUS/Shell/Wx/help/info_actions.html \
	blib/lib/CPANPLUS/Shell/Wx/help/info_actions.html \
	lib/CPANPLUS/Shell/Wx/help/prefs_mirrors.html \
	blib/lib/CPANPLUS/Shell/Wx/help/prefs_mirrors.html \
	lib/CPANPLUS/Shell/Wx/help/prefs_lib.html \
	blib/lib/CPANPLUS/Shell/Wx/help/prefs_lib.html \
	lib/CPANPLUS/Shell/Wx/help/preferences.html \
	blib/lib/CPANPLUS/Shell/Wx/help/preferences.html \
	lib/CPANPLUS/Shell/Wx/res/PrefsWin.xrc \
	blib/lib/CPANPLUS/Shell/Wx/res/PrefsWin.xrc \
	lib/CPANPLUS/Shell/Wx/help/prefs_paths.html \
	blib/lib/CPANPLUS/Shell/Wx/help/prefs_paths.html \
	lib/CPANPLUS/Shell/Wx/help/images/info_validate.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/info_validate.png \
	lib/CPANPLUS/Shell/Wx/help/prefs_build.html \
	blib/lib/CPANPLUS/Shell/Wx/help/prefs_build.html \
	lib/CPANPLUS/Shell/Wx/res/PrefsWin.wxg \
	blib/lib/CPANPLUS/Shell/Wx/res/PrefsWin.wxg \
	lib/CPANPLUS/Shell/Wx/help/prefs_programs.html \
	blib/lib/CPANPLUS/Shell/Wx/help/prefs_programs.html \
	lib/CPANPLUS/Shell/Wx/help/toolbar.html \
	blib/lib/CPANPLUS/Shell/Wx/help/toolbar.html \
	lib/CPANPLUS/Shell/Wx/res/FirstTimeWizard.wxg \
	blib/lib/CPANPLUS/Shell/Wx/res/FirstTimeWizard.wxg \
	lib/CPANPLUS/Shell/Wx/res/MainWin.xrc \
	blib/lib/CPANPLUS/Shell/Wx/res/MainWin.xrc \
	lib/CPANPLUS/Shell/Wx/help/podreader.html \
	blib/lib/CPANPLUS/Shell/Wx/help/podreader.html \
	lib/CPANPLUS/Shell/Wx/help/notebook.html \
	blib/lib/CPANPLUS/Shell/Wx/help/notebook.html \
	lib/CPANPLUS/Shell/Wx/help/notebook_actions.html \
	blib/lib/CPANPLUS/Shell/Wx/help/notebook_actions.html \
	lib/CPANPLUS/Shell/Wx/help/searching.html \
	blib/lib/CPANPLUS/Shell/Wx/help/searching.html \
	lib/CPANPLUS/Shell/Wx/help/info_pane.html \
	blib/lib/CPANPLUS/Shell/Wx/help/info_pane.html \
	lib/CPANPLUS/Shell/Wx/PODReader.pm \
	blib/lib/CPANPLUS/Shell/Wx/PODReader.pm \
	lib/CPANPLUS/Shell/Wx/ModulePanel.pm \
	blib/lib/CPANPLUS/Shell/Wx/ModulePanel.pm \
	lib/CPANPLUS/Shell/Wx/help/menu_edit.html \
	blib/lib/CPANPLUS/Shell/Wx/help/menu_edit.html \
	lib/CPANPLUS/Shell/Wx/help/images/help_menu.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/help_menu.png \
	lib/CPANPLUS/Shell/Wx/help/info_readme.html \
	blib/lib/CPANPLUS/Shell/Wx/help/info_readme.html \
	lib/CPANPLUS/Shell/Wx/help/prefs_wxcpan.html \
	blib/lib/CPANPLUS/Shell/Wx/help/prefs_wxcpan.html \
	lib/CPANPLUS/Shell/Wx/help/images/notebook.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/notebook.png \
	lib/CPANPLUS/Shell/Wx/res/MainWin.wxg \
	blib/lib/CPANPLUS/Shell/Wx/res/MainWin.wxg \
	lib/CPANPLUS/Shell/Wx.pm \
	blib/lib/CPANPLUS/Shell/Wx.pm \
	lib/CPANPLUS/Shell/Wx/help/menubar.html \
	blib/lib/CPANPLUS/Shell/Wx/help/menubar.html \
	lib/CPANPLUS/Shell/Wx/help/images/podreader.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/podreader.png \
	lib/CPANPLUS/Shell/Wx/help/info_files.html \
	blib/lib/CPANPLUS/Shell/Wx/help/info_files.html \
	lib/CPANPLUS/Shell/Wx/help/images/info_contents.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/info_contents.png \
	lib/CPANPLUS/Shell/Wx/help/menu_file.html \
	blib/lib/CPANPLUS/Shell/Wx/help/menu_file.html \
	lib/CPANPLUS/Shell/Wx/help/info_prereqs.html \
	blib/lib/CPANPLUS/Shell/Wx/help/info_prereqs.html \
	lib/CPANPLUS/Shell/Wx/Configure.pm \
	blib/lib/CPANPLUS/Shell/Wx/Configure.pm \
	wxcpan.pl \
	$(INST_LIB)/CPANPLUS/Shell/wxcpan.pl \
	lib/CPANPLUS/Shell/Wx/help/images/mainWindow.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/mainWindow.png \
	wxpodreader.pl \
	$(INST_LIB)/CPANPLUS/Shell/wxpodreader.pl \
	lib/CPANPLUS/Shell/Wx/help/notebook_podreader.html \
	blib/lib/CPANPLUS/Shell/Wx/help/notebook_podreader.html \
	lib/CPANPLUS/Shell/Wx/help/images/info_actions.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/info_actions.png \
	lib/CPANPLUS/Shell/Wx/help/index.html \
	blib/lib/CPANPLUS/Shell/Wx/help/index.html \
	lib/CPANPLUS/Shell/Wx/help/images/info_tabs.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/info_tabs.png \
	lib/CPANPLUS/Shell/Wx/help/symbols.html \
	blib/lib/CPANPLUS/Shell/Wx/help/symbols.html \
	lib/CPANPLUS/Shell/Wx/help/info_status.html \
	blib/lib/CPANPLUS/Shell/Wx/help/info_status.html \
	lib/CPANPLUS/Shell/Wx/help/contents.hhc \
	blib/lib/CPANPLUS/Shell/Wx/help/contents.hhc \
	lib/CPANPLUS/Shell/Wx/help/wxCPAN.hhp \
	blib/lib/CPANPLUS/Shell/Wx/help/wxCPAN.hhp \
	lib/CPANPLUS/Shell/Wx/help/menu_help.html \
	blib/lib/CPANPLUS/Shell/Wx/help/menu_help.html \
	lib/CPANPLUS/Shell/Wx/res/PODReader.wxg \
	blib/lib/CPANPLUS/Shell/Wx/res/PODReader.wxg \
	lib/CPANPLUS/Shell/Wx/help/searchbar.html \
	blib/lib/CPANPLUS/Shell/Wx/help/searchbar.html \
	lib/CPANPLUS/Shell/Wx/res/addMirror.xrc \
	blib/lib/CPANPLUS/Shell/Wx/res/addMirror.xrc \
	lib/CPANPLUS/Shell/Wx/help/images/info_status.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/info_status.png \
	lib/CPANPLUS/Shell/Wx/help/images/info_files.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/info_files.png \
	lib/CPANPLUS/Shell/Wx/res/splash.bmp \
	blib/lib/CPANPLUS/Shell/Wx/res/splash.bmp \
	lib/CPANPLUS/Shell/Wx/help/images/info_prereqs.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/info_prereqs.png \
	lib/CPANPLUS/Shell/Wx/help/images/info_readme.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/info_readme.png \
	lib/CPANPLUS/Shell/Wx/App.pm \
	blib/lib/CPANPLUS/Shell/Wx/App.pm \
	lib/CPANPLUS/Shell/Wx/ModuleTree.pm \
	blib/lib/CPANPLUS/Shell/Wx/ModuleTree.pm \
	lib/CPANPLUS/Shell/Wx/cpan_connector.pm \
	blib/lib/CPANPLUS/Shell/Wx/cpan_connector.pm \
	lib/CPANPLUS/Shell/Wx/util.pm \
	blib/lib/CPANPLUS/Shell/Wx/util.pm \
	lib/CPANPLUS/Shell/Wx/help/wxCPAN.hhk \
	blib/lib/CPANPLUS/Shell/Wx/help/wxCPAN.hhk \
	lib/CPANPLUS/Shell/Wx/help/images/info_info.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/info_info.png \
	lib/CPANPLUS/Shell/Wx/help/images/menubar.png \
	blib/lib/CPANPLUS/Shell/Wx/help/images/menubar.png


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.44
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(SHELL) -c true
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) "-MExtUtils::Command" -e mkpath
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) "-MExtUtils::Command" -e eqtime
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install({@ARGV}, '\''$(VERBINST)'\'', 0, '\''$(UNINST)'\'');' --
DOC_INSTALL = $(ABSPERLRUN) "-MExtUtils::Command::MM" -e perllocal_install
UNINSTALL = $(ABSPERLRUN) "-MExtUtils::Command::MM" -e uninstall
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) "-MExtUtils::Command::MM" -e warn_if_old_packlist
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(PERLRUN) "-MExtUtils::MY" -e "MY->fixin(shift)"


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip --best
SUFFIX = .gz
SHAR = shar
PREOP = $(NOECHO) $(NOOP)
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = CPANPLUS-Shell-Wx
DISTVNAME = CPANPLUS-Shell-Wx-0.01


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) 755 $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) 755 $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) 755 $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) 755 $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) 755 $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) 755 $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) 755 $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) 755 $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(INST_DYNAMIC) $(INST_BOOT)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	lib/CPANPLUS/Shell/Wx.pm \
	lib/CPANPLUS/Shell/Wx/PODReader.pm
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  lib/CPANPLUS/Shell/Wx.pm $(INST_MAN3DIR)/CPANPLUS::Shell::Wx.$(MAN3EXT) \
	  lib/CPANPLUS/Shell/Wx/PODReader.pm $(INST_MAN3DIR)/CPANPLUS::Shell::Wx::PODReader.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  *$(LIB_EXT) core \
	  core.[0-9] $(INST_ARCHAUTODIR)/extralibs.all \
	  core.[0-9][0-9] $(BASEEXT).bso \
	  pm_to_blib.ts core.[0-9][0-9][0-9][0-9] \
	  $(BASEEXT).x $(BOOTSTRAP) \
	  perl$(EXE_EXT) tmon.out \
	  *$(OBJ_EXT) pm_to_blib \
	  $(INST_ARCHAUTODIR)/extralibs.ld blibdirs.ts \
	  core.[0-9][0-9][0-9][0-9][0-9] *perl.core \
	  core.*perl.*.? $(MAKE_APERL_FILE) \
	  perl $(BASEEXT).def \
	  core.[0-9][0-9][0-9] mon.out \
	  lib$(BASEEXT).def perlmain.c \
	  perl.exe so_locations \
	  $(BASEEXT).exp 
	- $(RM_RF) \
	  blib 
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(MAKEFILE_OLD) $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile : create_distdir
	$(NOECHO) $(ECHO) Generating META.yml
	$(NOECHO) $(ECHO) '--- #YAML:1.0' > META_new.yml
	$(NOECHO) $(ECHO) 'name:                CPANPLUS-Shell-Wx' >> META_new.yml
	$(NOECHO) $(ECHO) 'version:             0.01' >> META_new.yml
	$(NOECHO) $(ECHO) 'abstract:            CPANPLUS wxGUI Shell' >> META_new.yml
	$(NOECHO) $(ECHO) 'license:             ~' >> META_new.yml
	$(NOECHO) $(ECHO) 'author:              ' >> META_new.yml
	$(NOECHO) $(ECHO) '    - Samuel C. Tyler <skamansam@gmail.com>' >> META_new.yml
	$(NOECHO) $(ECHO) 'generated_by:        ExtUtils::MakeMaker version 6.44' >> META_new.yml
	$(NOECHO) $(ECHO) 'distribution_type:   module' >> META_new.yml
	$(NOECHO) $(ECHO) 'requires:     ' >> META_new.yml
	$(NOECHO) $(ECHO) '    CPANPLUS:                      0.78' >> META_new.yml
	$(NOECHO) $(ECHO) '    Wx:                            0.74' >> META_new.yml
	$(NOECHO) $(ECHO) 'meta-spec:' >> META_new.yml
	$(NOECHO) $(ECHO) '    url:     http://module-build.sourceforge.net/META-spec-v1.3.html' >> META_new.yml
	$(NOECHO) $(ECHO) '    version: 1.3' >> META_new.yml
	-$(NOECHO) $(MV) META_new.yml $(DISTVNAME)/META.yml


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old 



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir distmeta 
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{META.yml} => q{Module meta-data (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add META.yml to MANIFEST: $${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: all pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: all pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: all pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: all pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install ::
	$(NOECHO) $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install ::
	$(NOECHO) $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSITESCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install ::
	$(NOECHO) $(MOD_INSTALL) \
		read $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLVENDORSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)

doc_perl_install ::
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_site_install ::
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_vendor_install ::
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	false



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="0,01,0,0">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <TITLE>$(DISTNAME)</TITLE>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT>CPANPLUS wxGUI Shell</ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>Samuel C. Tyler &lt;skamansam@gmail.com&gt;</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="CPANPLUS" VERSION="0,78,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <DEPENDENCY NAME="Wx" VERSION="0,74,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <OS NAME="$(OSNAME)" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="i386-linux-thread-multi-5.8" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', '\''$(PM_FILTER)'\'')' -- \
	  lib/CPANPLUS/Shell/Wx/help/images/searchbar.png blib/lib/CPANPLUS/Shell/Wx/help/images/searchbar.png \
	  lib/CPANPLUS/Shell/Wx/help/images/file_menu.png blib/lib/CPANPLUS/Shell/Wx/help/images/file_menu.png \
	  lib/CPANPLUS/Shell/Wx/help/info_validate.html blib/lib/CPANPLUS/Shell/Wx/help/info_validate.html \
	  lib/CPANPLUS/Shell/Wx/res/UpdateWizard.wxg blib/lib/CPANPLUS/Shell/Wx/res/UpdateWizard.wxg \
	  lib/CPANPLUS/Shell/Wx/help/images/info_report.png blib/lib/CPANPLUS/Shell/Wx/help/images/info_report.png \
	  lib/CPANPLUS/Shell/Wx/help/prefs_network.html blib/lib/CPANPLUS/Shell/Wx/help/prefs_network.html \
	  lib/CPANPLUS/Shell/Wx/help/notebook_modules.html blib/lib/CPANPLUS/Shell/Wx/help/notebook_modules.html \
	  lib/CPANPLUS/Shell/Wx/help/info_info.html blib/lib/CPANPLUS/Shell/Wx/help/info_info.html \
	  lib/CPANPLUS/Shell/Wx/res/firsttimewizard.pl blib/lib/CPANPLUS/Shell/Wx/res/firsttimewizard.pl \
	  lib/CPANPLUS/Shell/Wx/Frame.pm blib/lib/CPANPLUS/Shell/Wx/Frame.pm \
	  lib/CPANPLUS/Shell/Wx/help/images/toolbar.png blib/lib/CPANPLUS/Shell/Wx/help/images/toolbar.png \
	  lib/CPANPLUS/Shell/Wx/help/prefs_general.html blib/lib/CPANPLUS/Shell/Wx/help/prefs_general.html \
	  lib/CPANPLUS/Shell/Wx/UpdateWizard.pm blib/lib/CPANPLUS/Shell/Wx/UpdateWizard.pm \
	  lib/CPANPLUS/Shell/Wx/help/images/edit_menu.png blib/lib/CPANPLUS/Shell/Wx/help/images/edit_menu.png \
	  lib/CPANPLUS/Shell/Wx/help/notebook_log.html blib/lib/CPANPLUS/Shell/Wx/help/notebook_log.html \
	  lib/CPANPLUS/Shell/Wx/help/info_report.html blib/lib/CPANPLUS/Shell/Wx/help/info_report.html \
	  lib/CPANPLUS/Shell/Wx/help/info_contents.html blib/lib/CPANPLUS/Shell/Wx/help/info_contents.html \
	  lib/CPANPLUS/Shell/Wx/help/info_actions.html blib/lib/CPANPLUS/Shell/Wx/help/info_actions.html \
	  lib/CPANPLUS/Shell/Wx/help/prefs_mirrors.html blib/lib/CPANPLUS/Shell/Wx/help/prefs_mirrors.html \
	  lib/CPANPLUS/Shell/Wx/help/prefs_lib.html blib/lib/CPANPLUS/Shell/Wx/help/prefs_lib.html \
	  lib/CPANPLUS/Shell/Wx/help/preferences.html blib/lib/CPANPLUS/Shell/Wx/help/preferences.html \
	  lib/CPANPLUS/Shell/Wx/res/PrefsWin.xrc blib/lib/CPANPLUS/Shell/Wx/res/PrefsWin.xrc \
	  lib/CPANPLUS/Shell/Wx/help/prefs_paths.html blib/lib/CPANPLUS/Shell/Wx/help/prefs_paths.html \
	  lib/CPANPLUS/Shell/Wx/help/images/info_validate.png blib/lib/CPANPLUS/Shell/Wx/help/images/info_validate.png \
	  lib/CPANPLUS/Shell/Wx/help/prefs_build.html blib/lib/CPANPLUS/Shell/Wx/help/prefs_build.html \
	  lib/CPANPLUS/Shell/Wx/res/PrefsWin.wxg blib/lib/CPANPLUS/Shell/Wx/res/PrefsWin.wxg \
	  lib/CPANPLUS/Shell/Wx/help/prefs_programs.html blib/lib/CPANPLUS/Shell/Wx/help/prefs_programs.html \
	  lib/CPANPLUS/Shell/Wx/help/toolbar.html blib/lib/CPANPLUS/Shell/Wx/help/toolbar.html \
	  lib/CPANPLUS/Shell/Wx/res/FirstTimeWizard.wxg blib/lib/CPANPLUS/Shell/Wx/res/FirstTimeWizard.wxg \
	  lib/CPANPLUS/Shell/Wx/res/MainWin.xrc blib/lib/CPANPLUS/Shell/Wx/res/MainWin.xrc \
	  lib/CPANPLUS/Shell/Wx/help/podreader.html blib/lib/CPANPLUS/Shell/Wx/help/podreader.html \
	  lib/CPANPLUS/Shell/Wx/help/notebook.html blib/lib/CPANPLUS/Shell/Wx/help/notebook.html \
	  lib/CPANPLUS/Shell/Wx/help/notebook_actions.html blib/lib/CPANPLUS/Shell/Wx/help/notebook_actions.html \
	  lib/CPANPLUS/Shell/Wx/help/searching.html blib/lib/CPANPLUS/Shell/Wx/help/searching.html \
	  lib/CPANPLUS/Shell/Wx/help/info_pane.html blib/lib/CPANPLUS/Shell/Wx/help/info_pane.html \
	  lib/CPANPLUS/Shell/Wx/PODReader.pm blib/lib/CPANPLUS/Shell/Wx/PODReader.pm \
	  lib/CPANPLUS/Shell/Wx/ModulePanel.pm blib/lib/CPANPLUS/Shell/Wx/ModulePanel.pm \
	  lib/CPANPLUS/Shell/Wx/help/menu_edit.html blib/lib/CPANPLUS/Shell/Wx/help/menu_edit.html \
	  lib/CPANPLUS/Shell/Wx/help/images/help_menu.png blib/lib/CPANPLUS/Shell/Wx/help/images/help_menu.png \
	  lib/CPANPLUS/Shell/Wx/help/info_readme.html blib/lib/CPANPLUS/Shell/Wx/help/info_readme.html \
	  lib/CPANPLUS/Shell/Wx/help/prefs_wxcpan.html blib/lib/CPANPLUS/Shell/Wx/help/prefs_wxcpan.html \
	  lib/CPANPLUS/Shell/Wx/help/images/notebook.png blib/lib/CPANPLUS/Shell/Wx/help/images/notebook.png \
	  lib/CPANPLUS/Shell/Wx/res/MainWin.wxg blib/lib/CPANPLUS/Shell/Wx/res/MainWin.wxg \
	  lib/CPANPLUS/Shell/Wx.pm blib/lib/CPANPLUS/Shell/Wx.pm \
	  lib/CPANPLUS/Shell/Wx/help/menubar.html blib/lib/CPANPLUS/Shell/Wx/help/menubar.html \
	  lib/CPANPLUS/Shell/Wx/help/images/podreader.png blib/lib/CPANPLUS/Shell/Wx/help/images/podreader.png \
	  lib/CPANPLUS/Shell/Wx/help/info_files.html blib/lib/CPANPLUS/Shell/Wx/help/info_files.html \
	  lib/CPANPLUS/Shell/Wx/help/images/info_contents.png blib/lib/CPANPLUS/Shell/Wx/help/images/info_contents.png \
	  lib/CPANPLUS/Shell/Wx/help/menu_file.html blib/lib/CPANPLUS/Shell/Wx/help/menu_file.html \
	  lib/CPANPLUS/Shell/Wx/help/info_prereqs.html blib/lib/CPANPLUS/Shell/Wx/help/info_prereqs.html \
	  lib/CPANPLUS/Shell/Wx/Configure.pm blib/lib/CPANPLUS/Shell/Wx/Configure.pm \
	  wxcpan.pl $(INST_LIB)/CPANPLUS/Shell/wxcpan.pl \
	  lib/CPANPLUS/Shell/Wx/help/images/mainWindow.png blib/lib/CPANPLUS/Shell/Wx/help/images/mainWindow.png \
	  wxpodreader.pl $(INST_LIB)/CPANPLUS/Shell/wxpodreader.pl \
	  lib/CPANPLUS/Shell/Wx/help/notebook_podreader.html blib/lib/CPANPLUS/Shell/Wx/help/notebook_podreader.html \
	  lib/CPANPLUS/Shell/Wx/help/images/info_actions.png blib/lib/CPANPLUS/Shell/Wx/help/images/info_actions.png \
	  lib/CPANPLUS/Shell/Wx/help/index.html blib/lib/CPANPLUS/Shell/Wx/help/index.html \
	  lib/CPANPLUS/Shell/Wx/help/images/info_tabs.png blib/lib/CPANPLUS/Shell/Wx/help/images/info_tabs.png \
	  lib/CPANPLUS/Shell/Wx/help/symbols.html blib/lib/CPANPLUS/Shell/Wx/help/symbols.html \
	  lib/CPANPLUS/Shell/Wx/help/info_status.html blib/lib/CPANPLUS/Shell/Wx/help/info_status.html \
	  lib/CPANPLUS/Shell/Wx/help/contents.hhc blib/lib/CPANPLUS/Shell/Wx/help/contents.hhc \
	  lib/CPANPLUS/Shell/Wx/help/wxCPAN.hhp blib/lib/CPANPLUS/Shell/Wx/help/wxCPAN.hhp \
	  lib/CPANPLUS/Shell/Wx/help/menu_help.html blib/lib/CPANPLUS/Shell/Wx/help/menu_help.html \
	  lib/CPANPLUS/Shell/Wx/res/PODReader.wxg blib/lib/CPANPLUS/Shell/Wx/res/PODReader.wxg \
	  lib/CPANPLUS/Shell/Wx/help/searchbar.html blib/lib/CPANPLUS/Shell/Wx/help/searchbar.html \
	  lib/CPANPLUS/Shell/Wx/res/addMirror.xrc blib/lib/CPANPLUS/Shell/Wx/res/addMirror.xrc \
	  lib/CPANPLUS/Shell/Wx/help/images/info_status.png blib/lib/CPANPLUS/Shell/Wx/help/images/info_status.png \
	  lib/CPANPLUS/Shell/Wx/help/images/info_files.png blib/lib/CPANPLUS/Shell/Wx/help/images/info_files.png \
	  lib/CPANPLUS/Shell/Wx/res/splash.bmp blib/lib/CPANPLUS/Shell/Wx/res/splash.bmp \
	  lib/CPANPLUS/Shell/Wx/help/images/info_prereqs.png blib/lib/CPANPLUS/Shell/Wx/help/images/info_prereqs.png \
	  lib/CPANPLUS/Shell/Wx/help/images/info_readme.png blib/lib/CPANPLUS/Shell/Wx/help/images/info_readme.png \
	  lib/CPANPLUS/Shell/Wx/App.pm blib/lib/CPANPLUS/Shell/Wx/App.pm \
	  lib/CPANPLUS/Shell/Wx/ModuleTree.pm blib/lib/CPANPLUS/Shell/Wx/ModuleTree.pm \
	  lib/CPANPLUS/Shell/Wx/cpan_connector.pm blib/lib/CPANPLUS/Shell/Wx/cpan_connector.pm \
	  lib/CPANPLUS/Shell/Wx/util.pm blib/lib/CPANPLUS/Shell/Wx/util.pm \
	  lib/CPANPLUS/Shell/Wx/help/wxCPAN.hhk blib/lib/CPANPLUS/Shell/Wx/help/wxCPAN.hhk \
	  lib/CPANPLUS/Shell/Wx/help/images/info_info.png blib/lib/CPANPLUS/Shell/Wx/help/images/info_info.png \
	  lib/CPANPLUS/Shell/Wx/help/images/menubar.png blib/lib/CPANPLUS/Shell/Wx/help/images/menubar.png 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
