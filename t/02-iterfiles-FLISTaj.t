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
t/data/usr/lib/pkgconfig/xxf86vm.pc
t/data/usr/lib/pkgconfig/nunit.pc
t/data/usr/lib/pkgconfig/libgssglue.pc
t/data/usr/lib/pkgconfig/libIDL.pc
t/data/usr/lib/pkgconfig/tracker.pc
t/data/usr/lib/pkgconfig/xxf86misc.pc
t/data/usr/lib/pkgconfig/openssl.pc
t/data/usr/lib/pkgconfig/xfce4-icon-theme-1.0.pc
t/data/usr/lib/pkgconfig/gthread.pc
t/data/usr/lib/pkgconfig/libnl-1.pc
t/data/usr/lib/pkgconfig/libxml++-1.0.pc
t/data/usr/lib/pkgconfig/bonobo-activation-2.0.pc
t/data/usr/lib/pkgconfig/xf86dgaproto.pc
t/data/usr/lib/pkgconfig/libutouch-geis.pc
t/data/usr/lib/pkgconfig/mono-options.pc
t/data/usr/lib/pkgconfig/ORBit.pc
t/data/usr/lib/pkgconfig/gssdp-1.0.pc
t/data/usr/lib/pkgconfig/libpulse-mainloop-glib.pc
t/data/usr/lib/pkgconfig/QtDesigner.pc
t/data/usr/lib/pkgconfig/meanwhile.pc
t/data/usr/lib/pkgconfig/libcrypto.pc
t/data/usr/lib/pkgconfig/gmime-2.4.pc
t/data/usr/lib/pkgconfig/xcb-shm.pc
t/data/usr/lib/pkgconfig/recordproto.pc
t/data/usr/lib/pkgconfig/NetworkManager.pc
t/data/usr/lib/pkgconfig/ortp.pc
t/data/usr/lib/pkgconfig/gstreamer-floatcast-0.10.pc
t/data/usr/lib/pkgconfig/libgdiplus.pc
t/data/usr/lib/pkgconfig/xineramaproto.pc
t/data/usr/lib/pkgconfig/gtk-vnc-1.0.pc
t/data/usr/lib/pkgconfig/qimageblitz.pc
t/data/usr/lib/pkgconfig/libxul-embedding.pc
t/data/usr/lib/pkgconfig/libxklavier.pc
t/data/usr/lib/pkgconfig/xp.pc
t/data/usr/lib/pkgconfig/xmuu.pc
t/data/usr/lib/pkgconfig/gnome-settings-daemon.pc
t/data/usr/lib/pkgconfig/jinglesession-0.3.pc
t/data/usr/lib/pkgconfig/libgphoto2_port.pc
t/data/usr/lib/pkgconfig/devkit-power-gobject.pc
t/data/usr/lib/pkgconfig/zzipfseeko.pc
t/data/usr/lib/pkgconfig/bluez.pc
t/data/usr/lib/pkgconfig/thunar-vfs-1.pc
t/data/usr/lib/pkgconfig/pango.pc
t/data/usr/lib/pkgconfig/libdrm_radeon.pc
t/data/usr/lib/pkgconfig/zlib.pc
t/data/usr/lib/pkgconfig/libdca.pc
t/data/usr/lib/pkgconfig/gstreamer-dataprotocol-0.10.pc
t/data/usr/lib/pkgconfig/libdrm_intel.pc
t/data/usr/lib/pkgconfig/xvmc.pc
t/data/usr/lib/pkgconfig/gstreamer-tag-0.10.pc
)];

PkgConfigTest::run_exists_test($flist, __FILE__);
PkgConfigTest::run_flags_test($flist, __FILE__);
done_testing();
