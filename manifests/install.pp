#
# Internal class, that ensures
# pypolicydspf is installed.
#
# Parameters:
# $packages
#   Array of packages to install
# $package_ensure
#   ensure for package install
#   defaults to 'installed'
#
class pypolicydspf::install (
  Array  $packages       = ['postfix-policyd-spf-python'],
  String $package_ensure = 'installed',
){

  $package_default = {
    ensure => $package_ensure,
    tag    => 'pypolicydspf-packages',
  }
  ensure_packages($packages, $package_default)

}
