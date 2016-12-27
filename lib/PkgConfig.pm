package PkgConfig;

use strict;
use warnings;
use PkgConfig::LibPkgConf::Client;

sub _sep
{
  PkgConfig::LibPkgConf::Client->path_sep;
}

our @DEFAULT_SEARCH_PATH = PkgConfig::LibPkgConf::Client->new->path;

sub find
{
  my($class, $library, %options) = @_;
  
  my %client;
  
  if($options{search_path})
  {
    my @path = PkgConfig::LibPkgConf::Client->new->path;
    unshift @path,
      ref $options{search_path}
      ? @{ $options{search_path} }
      : split(_sep, $options{search_path});
    $client{path} = \@path;
  }
  
  if($options{search_path_override})
  {
    $client{path} = $options{search_path_override};
  }
  
  my $package = PkgConfig::LibPkgConf::Client->new(\%client)->find($library);
  my $errmsg  = $package ? undef : 'No such file';

  bless {
    package => $package,
    errmsg  => $errmsg,
    static  => $options{static},
  },
}

sub errmsg
{
  my($self) = @_;
  $self->{errmsg};
}

sub pkg_exists
{
  !!shift->_package;
}

sub _package { shift->{package} }

sub _static { shift->{static}   }

sub pkg_version
{
  my($self) = @_;
  $self->_package
  ? $self->_package->version
  : undef;
}

sub _unquote
{
  my($fragment) = "$_[0]";
  $fragment =~ s/\\(.)/$1/g;
  $fragment;
}

sub _quote
{
  my($fragment) = "$_[0]";
  $fragment =~ s/(\\?\s)/\\$1/g;
  $fragment;
}

sub get_cflags
{
  my($self) = @_;

  my @list = $self->_package
    ? $self->_static
      ? ($self->_package->list_cflags, $self->_package->list_cflags_private)
      : ($self->_package->list_cflags)
    : ();

  wantarray
  ? map { _unquote $_ } @list
  : join ' ', map { _quote $_ } @list;
}

sub get_ldflags
{
  my($self) = @_;

  my @list = $self->_package
    ? $self->_static
      ? ($self->_package->list_libs, $self->_package->list_libs_private)
      : ($self->_package->list_libs)
    : ();

  wantarray
  ? map { _unquote $_ } @list
  : join ' ', map { _quote $_ } @list;
}

sub get_var
{
  my($self, $key) = @_;
  $self->_package
  ? $self->_package->variable($key)
  : undef;
}

sub Guess
{
  warn "not implemented for Alt::PkgConfig::PLICEASE as it should not be necessary";
}

if(!caller)
{
  die "the command line interface is not supported yet";
}

package PkgConfig::Version;

use PkgConfig::LibPkgConf::Util ();

use overload
  '<=>' => sub { $_[0]->cmp($_[1]) },
  '""'  => sub { $_[0]->as_string };

sub new
{
  my($class, $value) = @_;
  bless \"$value", $class;
}

sub clone {
  __PACKAGE__->new(shift->as_string);
}

sub as_string
{
  my($self) = @_;
  $$self;
}

sub cmp
{
  my($self, $other) = @_;
  PkgConfig::LibPkgConf::Util::compare_version($$self, $$other);
}

1;
