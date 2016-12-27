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
t/data/usr/lib/pkgconfig/xf86miscproto.pc
t/data/usr/lib/pkgconfig/utouch-grail.pc
t/data/usr/lib/pkgconfig/xdmcp.pc
t/data/usr/lib/pkgconfig/gnutls.pc
t/data/usr/lib/pkgconfig/xorg-evdev.pc
t/data/usr/lib/pkgconfig/libcdio_paranoia.pc
t/data/usr/lib/pkgconfig/poppler.pc
t/data/usr/lib/pkgconfig/cogl-1.0.pc
t/data/usr/lib/pkgconfig/libgnomeui-2.0.pc
t/data/usr/lib/pkgconfig/libgcj.pc
t/data/usr/lib/pkgconfig/pangoxft.pc
t/data/usr/lib/pkgconfig/gio-2.0.pc
t/data/usr/lib/pkgconfig/SDL_image.pc
t/data/usr/lib/pkgconfig/poppler-splash.pc
t/data/usr/lib/pkgconfig/libxul-unstable.pc
t/data/usr/lib/pkgconfig/libdrm_nouveau.pc
t/data/usr/lib/pkgconfig/sigc++-2.0.pc
t/data/usr/lib/pkgconfig/xkbfile.pc
t/data/usr/lib/pkgconfig/compositeproto.pc
t/data/usr/lib/pkgconfig/xpm.pc
t/data/usr/lib/pkgconfig/cairo-pdf.pc
t/data/usr/lib/pkgconfig/libgadu.pc
t/data/usr/lib/pkgconfig/glibmm-2.4.pc
t/data/usr/lib/pkgconfig/zziplib.pc
t/data/usr/lib/pkgconfig/libexslt.pc
t/data/usr/lib/pkgconfig/gconf-2.0.pc
t/data/usr/lib/pkgconfig/gdk-pixbuf-xlib-2.0.pc
t/data/usr/lib/pkgconfig/gstreamer-audio-0.10.pc
t/data/usr/lib/pkgconfig/libavformat.pc
t/data/usr/lib/pkgconfig/libmpg123.pc
t/data/usr/lib/pkgconfig/gdk-x11-2.0.pc
t/data/usr/lib/pkgconfig/cucul.pc
t/data/usr/lib/pkgconfig/liblircclient0.pc
t/data/usr/lib/pkgconfig/theora.pc
t/data/usr/lib/pkgconfig/libdrm.pc
t/data/usr/lib/pkgconfig/QtSvg.pc
t/data/usr/lib/pkgconfig/wcf.pc
t/data/usr/lib/pkgconfig/libkms.pc
t/data/usr/lib/pkgconfig/libgnome-2.0.pc
t/data/usr/lib/pkgconfig/vorbis.pc
t/data/usr/lib/pkgconfig/opencore-amrwb.pc
t/data/usr/lib/pkgconfig/cairo-ft.pc
t/data/usr/lib/pkgconfig/zzipmmapped.pc
t/data/usr/lib/pkgconfig/libpng12.pc
t/data/usr/lib/pkgconfig/notify-python.pc
t/data/usr/lib/pkgconfig/libavc1394.pc
t/data/usr/lib/pkgconfig/gudev-1.0.pc
t/data/usr/lib/pkgconfig/vte.pc
t/data/usr/lib/pkgconfig/libpkcs15init.pc
t/data/usr/lib/pkgconfig/libdc1394-2.pc
)];

PkgConfigTest::run_exists_test($flist, __FILE__);
PkgConfigTest::run_flags_test($flist, __FILE__);
done_testing();
