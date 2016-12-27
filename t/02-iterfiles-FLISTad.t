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
t/data/usr/lib/pkgconfig/fuse.pc
t/data/usr/lib/pkgconfig/libxfce4util-1.0.pc
t/data/usr/lib/pkgconfig/jinglep2p-0.3.pc
t/data/usr/lib/pkgconfig/fftw3l.pc
t/data/usr/lib/pkgconfig/xau.pc
t/data/usr/lib/pkgconfig/GraphicsMagick.pc
t/data/usr/lib/pkgconfig/giomm-2.4.pc
t/data/usr/lib/pkgconfig/cairo-tee.pc
t/data/usr/lib/pkgconfig/libgtop-2.0.pc
t/data/usr/lib/pkgconfig/ao.pc
t/data/usr/lib/pkgconfig/libnfsidmap.pc
t/data/usr/lib/pkgconfig/libxslt.pc
t/data/usr/lib/pkgconfig/schroedinger-1.0.pc
t/data/usr/lib/pkgconfig/libpcrecpp.pc
t/data/usr/lib/pkgconfig/libxfcegui4-1.0.pc
t/data/usr/lib/pkgconfig/libmetacity-private.pc
t/data/usr/lib/pkgconfig/xf86vidmodeproto.pc
t/data/usr/lib/pkgconfig/gstreamer-pbutils-0.10.pc
t/data/usr/lib/pkgconfig/glu.pc
t/data/usr/lib/pkgconfig/cairomm-ps-1.0.pc
t/data/usr/lib/pkgconfig/fftw3.pc
t/data/usr/lib/pkgconfig/wmlib.pc
t/data/usr/lib/pkgconfig/xf86driproto.pc
t/data/usr/lib/pkgconfig/rarian.pc
t/data/usr/lib/pkgconfig/QtCLucene.pc
t/data/usr/lib/pkgconfig/dotnet.pc
t/data/usr/lib/pkgconfig/OpenEXR.pc
t/data/usr/lib/pkgconfig/videoproto.pc
t/data/usr/lib/pkgconfig/mono.pc
t/data/usr/lib/pkgconfig/libstartup-notification-1.0.pc
t/data/usr/lib/pkgconfig/dbus-glib-1.pc
t/data/usr/lib/pkgconfig/pygtkglext-1.0.pc
t/data/usr/lib/pkgconfig/cecil.pc
t/data/usr/lib/pkgconfig/pixman-1.pc
t/data/usr/lib/pkgconfig/cairomm-pdf-1.0.pc
t/data/usr/lib/pkgconfig/dri.pc
t/data/usr/lib/pkgconfig/unique-1.0.pc
t/data/usr/lib/pkgconfig/libart-2.0.pc
t/data/usr/lib/pkgconfig/QtNetwork.pc
t/data/usr/lib/pkgconfig/mtdev.pc
t/data/usr/lib/pkgconfig/speexdsp.pc
t/data/usr/lib/pkgconfig/freetype2.pc
t/data/usr/lib/pkgconfig/gtk+-x11-2.0.pc
t/data/usr/lib/pkgconfig/fribidi.pc
t/data/usr/lib/pkgconfig/libssl.pc
t/data/usr/lib/pkgconfig/kbproto.pc
t/data/usr/lib/pkgconfig/Qt.pc
t/data/usr/lib/pkgconfig/alsa.pc
t/data/usr/lib/pkgconfig/gobject-introspection-no-export-1.0.pc
t/data/usr/lib/pkgconfig/sdl.pc
)];

PkgConfigTest::run_exists_test($flist, __FILE__);
PkgConfigTest::run_flags_test($flist, __FILE__);
done_testing();
