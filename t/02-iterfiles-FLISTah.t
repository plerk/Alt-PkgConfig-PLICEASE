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
t/data/usr/lib/pkgconfig/libgphoto2.pc
t/data/usr/lib/pkgconfig/gmodule-export-2.0.pc
t/data/usr/lib/pkgconfig/nspr.pc
t/data/usr/lib/pkgconfig/cairo-ps.pc
t/data/usr/lib/pkgconfig/QtXml.pc
t/data/usr/lib/pkgconfig/mozilla-gtkmozembed.pc
t/data/usr/lib/pkgconfig/xcb-render.pc
t/data/usr/lib/pkgconfig/libgcj10.pc
t/data/usr/lib/pkgconfig/openal.pc
t/data/usr/lib/pkgconfig/libv4lconvert.pc
t/data/usr/lib/pkgconfig/libavcore.pc
t/data/usr/lib/pkgconfig/libgcj-4.4.pc
t/data/usr/lib/pkgconfig/jinglexmllite-0.3.pc
t/data/usr/lib/pkgconfig/fontcacheproto.pc
t/data/usr/lib/pkgconfig/librsvg-2.0.pc
t/data/usr/lib/pkgconfig/gnome-vfs-module-2.0.pc
t/data/usr/lib/pkgconfig/pilot-link.pc
t/data/usr/lib/pkgconfig/libglade-2.0.pc
t/data/usr/lib/pkgconfig/x11.pc
t/data/usr/lib/pkgconfig/libpulse-simple.pc
t/data/usr/lib/pkgconfig/gstreamer-cdda-0.10.pc
t/data/usr/lib/pkgconfig/libwnck-1.0.pc
t/data/usr/lib/pkgconfig/gamin.pc
t/data/usr/lib/pkgconfig/xxf86dga.pc
t/data/usr/lib/pkgconfig/ORBit-idl-2.0.pc
t/data/usr/lib/pkgconfig/portaudio-2.0.pc
t/data/usr/lib/pkgconfig/fontutil.pc
t/data/usr/lib/pkgconfig/libiec61883.pc
t/data/usr/lib/pkgconfig/gstreamer-riff-0.10.pc
t/data/usr/lib/pkgconfig/xi.pc
t/data/usr/lib/pkgconfig/audiofile.pc
t/data/usr/lib/pkgconfig/x11-xcb.pc
t/data/usr/lib/pkgconfig/libebook-1.2.pc
t/data/usr/lib/pkgconfig/dbus-python.pc
t/data/usr/lib/pkgconfig/xrender.pc
t/data/usr/lib/pkgconfig/mozilla-gtkmozembed-embedding.pc
t/data/usr/lib/pkgconfig/xcb-aux.pc
t/data/usr/lib/pkgconfig/cairomm-png-1.0.pc
t/data/usr/lib/pkgconfig/scrnsaverproto.pc
t/data/usr/lib/pkgconfig/QtTest.pc
t/data/usr/lib/pkgconfig/cairo-fc.pc
t/data/usr/lib/pkgconfig/imlib.pc
t/data/usr/lib/pkgconfig/hal-storage.pc
t/data/usr/lib/pkgconfig/libsepol.pc
t/data/usr/lib/pkgconfig/autoopts.pc
t/data/usr/lib/pkgconfig/GraphicsMagickWand.pc
t/data/usr/lib/pkgconfig/clutter-glx-1.0.pc
t/data/usr/lib/pkgconfig/portaudiocpp.pc
t/data/usr/lib/pkgconfig/opencore-amrnb.pc
t/data/usr/lib/pkgconfig/esound.pc
)];

PkgConfigTest::run_exists_test($flist, __FILE__);
PkgConfigTest::run_flags_test($flist, __FILE__);
done_testing();
