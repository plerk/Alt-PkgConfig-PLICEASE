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
t/data/usr/lib/pkgconfig/nss.pc
t/data/usr/lib/pkgconfig/clutter-x11-1.0.pc
t/data/usr/lib/pkgconfig/sane-backends.pc
t/data/usr/lib/pkgconfig/libdv.pc
t/data/usr/lib/pkgconfig/directfb-internal.pc
t/data/usr/lib/pkgconfig/QtUiTools.pc
t/data/usr/lib/pkgconfig/libv4l1.pc
t/data/usr/lib/pkgconfig/pciaccess.pc
t/data/usr/lib/pkgconfig/libpulse.pc
t/data/usr/lib/pkgconfig/libraw1394.pc
t/data/usr/lib/pkgconfig/libpng.pc
t/data/usr/lib/pkgconfig/libusb-1.0.pc
t/data/usr/lib/pkgconfig/libproxy-1.0.pc
t/data/usr/lib/pkgconfig/gstreamer-rtp-0.10.pc
t/data/usr/lib/pkgconfig/taglib.pc
t/data/usr/lib/pkgconfig/libquicktime.pc
t/data/usr/lib/pkgconfig/libgnomecanvas-2.0.pc
t/data/usr/lib/pkgconfig/xcmiscproto.pc
t/data/usr/lib/pkgconfig/xulrunner-nss.pc
t/data/usr/lib/pkgconfig/lcms.pc
t/data/usr/lib/pkgconfig/libedataserver-1.2.pc
t/data/usr/lib/pkgconfig/libsoup-2.4.pc
t/data/usr/lib/pkgconfig/libtpl.pc
t/data/usr/lib/pkgconfig/libsqueeze-0.2.pc
t/data/usr/lib/pkgconfig/pygtk-2.0.pc
t/data/usr/lib/pkgconfig/libpulse-browse.pc
t/data/usr/lib/pkgconfig/clutter-1.0.pc
t/data/usr/lib/pkgconfig/cairo-svg.pc
t/data/usr/lib/pkgconfig/polkit.pc
t/data/usr/lib/pkgconfig/libecal-1.2.pc
t/data/usr/lib/pkgconfig/xmu.pc
t/data/usr/lib/pkgconfig/libnautilus-extension.pc
t/data/usr/lib/pkgconfig/libusbmuxd.pc
t/data/usr/lib/pkgconfig/atkmm-1.6.pc
t/data/usr/lib/pkgconfig/cairo-gobject.pc
t/data/usr/lib/pkgconfig/libbonobo-2.0.pc
t/data/usr/lib/pkgconfig/system.web.extensions.design_1.0.pc
t/data/usr/lib/pkgconfig/libxul-embedding-unstable.pc
t/data/usr/lib/pkgconfig/pm-utils.pc
t/data/usr/lib/pkgconfig/ext2fs.pc
t/data/usr/lib/pkgconfig/gstreamer-fft-0.10.pc
t/data/usr/lib/pkgconfig/thunarx-1.pc
t/data/usr/lib/pkgconfig/gnutls-extra.pc
t/data/usr/lib/pkgconfig/xv.pc
t/data/usr/lib/pkgconfig/orc-0.4.pc
t/data/usr/lib/pkgconfig/QtCore.pc
t/data/usr/lib/pkgconfig/gmodule-2.0.pc
t/data/usr/lib/pkgconfig/QtMultimedia.pc
t/data/usr/lib/pkgconfig/libscconf.pc
t/data/usr/lib/pkgconfig/cucul++.pc
)];

PkgConfigTest::run_exists_test($flist, __FILE__);
PkgConfigTest::run_flags_test($flist, __FILE__);
done_testing();
