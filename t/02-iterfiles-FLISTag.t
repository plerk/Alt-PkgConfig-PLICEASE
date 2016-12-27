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
t/data/usr/lib/pkgconfig/QtScriptTools.pc
t/data/usr/lib/pkgconfig/libpcreposix.pc
t/data/usr/lib/pkgconfig/caca++.pc
t/data/usr/lib/pkgconfig/evieproto.pc
t/data/usr/lib/pkgconfig/cairo-xlib-xrender.pc
t/data/usr/lib/pkgconfig/libnotify.pc
t/data/usr/lib/pkgconfig/eventlog.pc
t/data/usr/lib/pkgconfig/enchant.pc
t/data/usr/lib/pkgconfig/damageproto.pc
t/data/usr/lib/pkgconfig/libidn.pc
t/data/usr/lib/pkgconfig/avahi-client.pc
t/data/usr/lib/pkgconfig/ORBit-CosNaming-2.0.pc
t/data/usr/lib/pkgconfig/liblzma.pc
t/data/usr/lib/pkgconfig/gnome-pilot-2.0.pc
t/data/usr/lib/pkgconfig/QtAssistantClient.pc
t/data/usr/lib/pkgconfig/libcdio_cdda.pc
t/data/usr/lib/pkgconfig/pangox.pc
t/data/usr/lib/pkgconfig/zzipwrap.pc
t/data/usr/lib/pkgconfig/libavutil.pc
t/data/usr/lib/pkgconfig/gtkmm-2.4.pc
t/data/usr/lib/pkgconfig/libimobiledevice-1.0.pc
t/data/usr/lib/pkgconfig/xulrunner-nspr.pc
t/data/usr/lib/pkgconfig/libdts.pc
t/data/usr/lib/pkgconfig/cally-1.0.pc
t/data/usr/lib/pkgconfig/pangoft2.pc
t/data/usr/lib/pkgconfig/gnome-window-settings-2.0.pc
t/data/usr/lib/pkgconfig/gstreamer-controller-0.10.pc
t/data/usr/lib/pkgconfig/mozilla-plugin.pc
t/data/usr/lib/pkgconfig/pyside.pc
t/data/usr/lib/pkgconfig/libdecoration.pc
t/data/usr/lib/pkgconfig/QtScript.pc
t/data/usr/lib/pkgconfig/theoraenc.pc
t/data/usr/lib/pkgconfig/glib-2.0.pc
t/data/usr/lib/pkgconfig/libxine.pc
t/data/usr/lib/pkgconfig/libv4l2.pc
t/data/usr/lib/pkgconfig/wrlib.pc
t/data/usr/lib/pkgconfig/alsaplayer.pc
t/data/usr/lib/pkgconfig/gkrellm.pc
t/data/usr/lib/pkgconfig/fontconfig.pc
t/data/usr/lib/pkgconfig/liboil-0.3.pc
t/data/usr/lib/pkgconfig/gmodule-no-export-2.0.pc
t/data/usr/lib/pkgconfig/cairo-xcb-shm.pc
t/data/usr/lib/pkgconfig/libssh2.pc
t/data/usr/lib/pkgconfig/directfb.pc
t/data/usr/lib/pkgconfig/talloc.pc
t/data/usr/lib/pkgconfig/gtk+-2.0.pc
t/data/usr/lib/pkgconfig/libgnomeprintui-2.2.pc
t/data/usr/lib/pkgconfig/xrandr.pc
t/data/usr/lib/pkgconfig/libvbucket.pc
t/data/usr/lib/pkgconfig/python-2.7.pc
)];

PkgConfigTest::run_exists_test($flist, __FILE__);
PkgConfigTest::run_flags_test($flist, __FILE__);
done_testing();
