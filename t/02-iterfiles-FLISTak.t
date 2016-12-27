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
t/data/usr/lib/pkgconfig/xft.pc
t/data/usr/lib/pkgconfig/zzip-zlib-config.pc
t/data/usr/lib/pkgconfig/libyahoo2.pc
t/data/usr/lib/pkgconfig/libvisual-0.4.pc
t/data/usr/lib/pkgconfig/gstreamer-video-0.10.pc
t/data/usr/lib/pkgconfig/gupnp-igd-1.0.pc
t/data/usr/lib/pkgconfig/gtkspell-2.0.pc
t/data/usr/lib/pkgconfig/libmpeg2convert.pc
t/data/usr/lib/pkgconfig/fusion.pc
t/data/usr/lib/pkgconfig/exo-0.3.pc
t/data/usr/lib/pkgconfig/gl.pc
t/data/usr/lib/pkgconfig/mutter-plugins.pc
t/data/usr/lib/pkgconfig/libagg.pc
t/data/usr/lib/pkgconfig/gthread-2.0.pc
t/data/usr/lib/pkgconfig/mono-nunit.pc
t/data/usr/lib/pkgconfig/libmutter-private.pc
t/data/usr/lib/pkgconfig/gstreamer-sdp-0.10.pc
t/data/usr/lib/pkgconfig/dmx.pc
t/data/usr/lib/pkgconfig/gstreamer-app-0.10.pc
t/data/usr/lib/pkgconfig/xcb-util.pc
t/data/usr/lib/pkgconfig/xscrnsaver.pc
t/data/usr/lib/pkgconfig/pangomm-1.4.pc
t/data/usr/lib/pkgconfig/farsight2-0.10.pc
t/data/usr/lib/pkgconfig/libgnomekbdui.pc
t/data/usr/lib/pkgconfig/hal.pc
t/data/usr/lib/pkgconfig/cairo.pc
t/data/usr/lib/pkgconfig/ORBit-imodule-2.0.pc
t/data/usr/lib/pkgconfig/gstreamer-base-0.10.pc
t/data/usr/lib/pkgconfig/gnome-keyring-1.pc
t/data/usr/lib/pkgconfig/json-glib-1.0.pc
t/data/usr/lib/pkgconfig/printproto.pc
t/data/usr/lib/pkgconfig/com_err.pc
t/data/usr/lib/pkgconfig/shout.pc
t/data/usr/lib/pkgconfig/atk.pc
t/data/usr/lib/pkgconfig/libavcodec.pc
t/data/usr/lib/pkgconfig/exempi-2.0.pc
t/data/usr/lib/pkgconfig/camel-provider-1.2.pc
t/data/usr/lib/pkgconfig/dirac.pc
t/data/usr/lib/pkgconfig/xf86bigfontproto.pc
t/data/usr/lib/pkgconfig/gnome-vfs-2.0.pc
t/data/usr/lib/pkgconfig/mjpegtools.pc
t/data/usr/lib/pkgconfig/libfs.pc
t/data/usr/lib/pkgconfig/vorbisenc.pc
t/data/usr/lib/pkgconfig/gnome-desktop-2.0.pc
t/data/usr/lib/pkgconfig/silc.pc
t/data/usr/lib/pkgconfig/libselinux.pc
t/data/usr/lib/pkgconfig/gdk-pixbuf-2.0.pc
t/data/usr/lib/pkgconfig/speex.pc
t/data/usr/lib/pkgconfig/dvdread.pc
t/data/usr/lib/pkgconfig/python2.5/gst-python-0.10.pc
)];

PkgConfigTest::run_exists_test($flist, __FILE__);
PkgConfigTest::run_flags_test($flist, __FILE__);
done_testing();
