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
t/data/usr/lib/pkgconfig/librtmp.pc
t/data/usr/lib/pkgconfig/libxml++-2.6.pc
t/data/usr/lib/pkgconfig/gstreamer-net-0.10.pc
t/data/usr/lib/pkgconfig/nautilus-sendto.pc
t/data/usr/lib/pkgconfig/cairomm-1.0.pc
t/data/usr/lib/pkgconfig/gstreamer-interfaces-0.10.pc
t/data/usr/lib/pkgconfig/QtOpenGL.pc
t/data/usr/lib/pkgconfig/xfixes.pc
t/data/usr/lib/pkgconfig/gtk+-unix-print-2.0.pc
t/data/usr/lib/pkgconfig/caca.pc
t/data/usr/lib/pkgconfig/libavdevice.pc
t/data/usr/lib/pkgconfig/xevie.pc
t/data/usr/lib/pkgconfig/webkit-1.0.pc
t/data/usr/lib/pkgconfig/glitz.pc
t/data/usr/lib/pkgconfig/QtDBus.pc
t/data/usr/lib/pkgconfig/glitz-glx.pc
t/data/usr/lib/pkgconfig/renderproto.pc
t/data/usr/lib/pkgconfig/dbus-1.pc
t/data/usr/lib/pkgconfig/utouch-evemu.pc
t/data/usr/lib/pkgconfig/libgnome-menu.pc
t/data/usr/lib/pkgconfig/trapproto.pc
t/data/usr/lib/pkgconfig/libusb.pc
t/data/usr/lib/pkgconfig/QtWebKit.pc
t/data/usr/lib/pkgconfig/gstreamer-0.10.pc
t/data/usr/lib/pkgconfig/libcurl.pc
t/data/usr/lib/pkgconfig/dvdnavmini.pc
t/data/usr/lib/pkgconfig/gst-python-0.10.pc
t/data/usr/lib/pkgconfig/theoradec.pc
t/data/usr/lib/pkgconfig/evolution-data-server-1.2.pc
t/data/usr/lib/pkgconfig/gstreamer-netbuffer-0.10.pc
t/data/usr/lib/pkgconfig/gweather.pc
t/data/usr/lib/pkgconfig/cairomm-svg-1.0.pc
t/data/usr/lib/pkgconfig/randrproto.pc
t/data/usr/lib/pkgconfig/libegroupwise-1.2.pc
t/data/usr/lib/pkgconfig/gail.pc
t/data/usr/lib/pkgconfig/fontsproto.pc
t/data/usr/lib/pkgconfig/polkit-gobject-1.pc
t/data/usr/lib/pkgconfig/x264.pc
t/data/usr/lib/pkgconfig/xaw7.pc
t/data/usr/lib/pkgconfig/jinglebase-0.3.pc
t/data/usr/lib/pkgconfig/gstreamer-check-0.10.pc
t/data/usr/lib/pkgconfig/gio-unix-2.0.pc
t/data/usr/lib/pkgconfig/sndfile.pc
t/data/usr/lib/pkgconfig/exo-hal-0.3.pc
t/data/usr/lib/pkgconfig/cairo-png.pc
t/data/usr/lib/pkgconfig/Qt3Support.pc
t/data/usr/lib/pkgconfig/direct.pc
t/data/usr/lib/pkgconfig/poppler-cairo.pc
t/data/usr/lib/pkgconfig/sofia-sip-ua.pc
t/data/usr/lib/pkgconfig/tre.pc
)];

PkgConfigTest::run_exists_test($flist, __FILE__);
PkgConfigTest::run_flags_test($flist, __FILE__);
done_testing();
