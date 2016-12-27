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
t/data/usr/lib/pkgconfig/silcclient.pc
t/data/usr/lib/pkgconfig/mono.web.pc
t/data/usr/lib/pkgconfig/gdu.pc
t/data/usr/lib/pkgconfig/xcursor.pc
t/data/usr/lib/pkgconfig/cogl-gl-1.0.pc
t/data/usr/lib/pkgconfig/gstreamer-rtsp-0.10.pc
t/data/usr/lib/pkgconfig/wavpack.pc
t/data/usr/lib/pkgconfig/xcb-event.pc
t/data/usr/lib/pkgconfig/mono-cairo.pc
t/data/usr/lib/pkgconfig/ogg.pc
t/data/usr/lib/pkgconfig/bigreqsproto.pc
t/data/usr/lib/pkgconfig/pyvte.pc
t/data/usr/lib/pkgconfig/xext.pc
t/data/usr/lib/pkgconfig/uuid.pc
t/data/usr/lib/pkgconfig/libpostproc.pc
t/data/usr/lib/pkgconfig/valgrind.pc
t/data/usr/lib/pkgconfig/libxml-2.0.pc
t/data/usr/lib/pkgconfig/libgnomeprint-2.2.pc
t/data/usr/lib/pkgconfig/imlib2.pc
t/data/usr/lib/pkgconfig/libcap-ng.pc
t/data/usr/lib/pkgconfig/libtasn1.pc
t/data/usr/lib/pkgconfig/nautilus-python.pc
t/data/usr/lib/pkgconfig/librpcsecgss.pc
t/data/usr/lib/pkgconfig/mad.pc
t/data/usr/lib/pkgconfig/libpcre.pc
t/data/usr/lib/pkgconfig/camel-1.2.pc
t/data/usr/lib/pkgconfig/sqlite3.pc
t/data/usr/lib/pkgconfig/libudev.pc
t/data/usr/lib/pkgconfig/devmapper.pc
t/data/usr/lib/pkgconfig/gobject-2.0.pc
t/data/usr/lib/pkgconfig/jinglexmpp-0.3.pc
t/data/usr/lib/pkgconfig/libIDL-2.0.pc
t/data/usr/lib/pkgconfig/utouch-frame.pc
t/data/usr/lib/pkgconfig/gdk-2.0.pc
t/data/usr/lib/pkgconfig/xcb-atom.pc
t/data/usr/lib/pkgconfig/gnome-js-common.pc
t/data/usr/lib/pkgconfig/cairo-xlib.pc
t/data/usr/lib/pkgconfig/xtrap.pc
t/data/usr/lib/pkgconfig/polkit-gtk-1.pc
t/data/usr/lib/pkgconfig/QtGui.pc
t/data/usr/lib/pkgconfig/libexchange-storage-1.2.pc
t/data/usr/lib/pkgconfig/gobject-introspection-1.0.pc
t/data/usr/lib/pkgconfig/cairomm-ft-1.0.pc
t/data/usr/lib/pkgconfig/xres.pc
t/data/usr/lib/pkgconfig/gnome-mount.pc
t/data/usr/lib/pkgconfig/gdkmm-2.4.pc
t/data/usr/lib/pkgconfig/cairo-xcb.pc
t/data/usr/lib/pkgconfig/fftw3f.pc
t/data/usr/lib/pkgconfig/libcdio.pc
t/data/usr/lib/pkgconfig/glib.pc
)];

PkgConfigTest::run_exists_test($flist, __FILE__);
PkgConfigTest::run_flags_test($flist, __FILE__);
done_testing();
