# Public: Install MSoffice into /Applications.
#
# Examples
#
#   include msoffice
#   class { 'msoffice':
#     version => '2011',
#   }
class msoffice(
  $version='2011',
  $username='NO_ACCESS',
  $password='NO_ACCESS',
) {
  if $username != 'NO_ACCESS' {
    package { "MSOffice-${version}":
      provider => 'pkgdmg',
      source   => "http://${username}:${password}@artifactory.ctlt.ubc.ca/artifactory/ctlt-protected/Office/Office_Mac_Standard_${version}.dmg",
    }
  } else {
    notice('Skipped installing MSOffice as credential is not specified!')
  }
}
