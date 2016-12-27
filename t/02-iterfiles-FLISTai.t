#!/usr/bin/perl
use strict;
use warnings;
use Test::More;
use FindBin ();
use lib $FindBin::Bin;
use PkgConfigTest;

plan skip_all => 'skip long running tests on ActiveState PPM build'
  if $ENV{ACTIVESTATE_PPM_BUILD};

my $flist = [qw(
t/data/usr/lib/pkgconfig/slang.pc
t/data/usr/lib/pkgconfig/libmpeg2.pc
t/data/usr/lib/pkgconfig/libplist.pc
t/data/usr/lib/pkgconfig/GraphicsMagick++.pc
t/data/usr/lib/pkgconfig/pygobject-2.0.pc
t/data/usr/lib/pkgconfig/libexif.pc
t/data/usr/lib/pkgconfig/libgpod-1.0.pc
t/data/usr/lib/pkgconfig/nice.pc
t/data/usr/lib/pkgconfig/gnome-screensaver.pc
t/data/usr/lib/pkgconfig/libcroco-0.6.pc
t/data/usr/lib/pkgconfig/xinerama.pc
t/data/usr/lib/pkgconfig/libsoup-gnome-2.4.pc
t/data/usr/lib/pkgconfig/libbonoboui-2.0.pc
t/data/usr/lib/pkgconfig/mono-lineeditor.pc
t/data/usr/lib/pkgconfig/avahi-glib.pc
t/data/usr/lib/pkgconfig/ice.pc
t/data/usr/lib/pkgconfig/dotnet35.pc
t/data/usr/lib/pkgconfig/mozilla-js.pc
t/data/usr/lib/pkgconfig/gmodule.pc
t/data/usr/lib/pkgconfig/xt.pc
t/data/usr/lib/pkgconfig/ORBit-2.0.pc
t/data/usr/lib/pkgconfig/libarchive.pc
t/data/usr/lib/pkgconfig/check.pc
t/data/usr/lib/pkgconfig/pangocairo.pc
t/data/usr/lib/pkgconfig/xcb.pc
t/data/usr/lib/pkgconfig/e2p.pc
t/data/usr/lib/pkgconfig/system.web.extensions_1.0.pc
t/data/usr/lib/pkgconfig/xorg-server.pc
t/data/usr/lib/pkgconfig/libsysfs.pc
t/data/usr/lib/pkgconfig/libffi.pc
t/data/usr/lib/pkgconfig/gvnc-1.0.pc
t/data/usr/lib/pkgconfig/xtst.pc
t/data/usr/lib/pkgconfig/system.web.mvc.pc
t/data/usr/lib/pkgconfig/sm.pc
t/data/usr/lib/pkgconfig/libedata-book-1.2.pc
t/data/usr/lib/pkgconfig/xkbui.pc
t/data/usr/lib/pkgconfig/resourceproto.pc
t/data/usr/lib/pkgconfig/QtSql.pc
t/data/usr/lib/pkgconfig/libopensc.pc
t/data/usr/lib/pkgconfig/QtDesignerComponents.pc
t/data/usr/lib/pkgconfig/cairomm-xlib-1.0.pc
t/data/usr/lib/pkgconfig/xdamage.pc
t/data/usr/lib/pkgconfig/xcomposite.pc
t/data/usr/lib/pkgconfig/fontenc.pc
t/data/usr/lib/pkgconfig/QtHelp.pc
t/data/usr/lib/pkgconfig/gstreamer-plugins-base-0.10.pc
t/data/usr/lib/pkgconfig/xfont.pc
t/data/usr/lib/pkgconfig/gtkhotkey-1.0.pc
t/data/usr/lib/pkgconfig/libpci.pc
t/data/usr/lib/pkgconfig/gupnp-1.0.pc
)];

PkgConfigTest::run_exists_test($flist, __FILE__);
PkgConfigTest::run_flags_test($flist, __FILE__);
done_testing();
