# Class: glassfish::params
#
# Defines Glassfish params
#
class glassfish::params {
  # Installation method. Can be: 'yum','zip'.
  $glassfish_install_method = 'yum'

  # Default glassfish temporary directory for downloading Zip.
  $glassfish_tmp_dir = '/tmp'

  # RPM Package prefix
  $glassfish_package_prefix = 'glassfish3'

  # Default Glassfish version
  $glassfish_version = '3.1.2.2'

  # Default Glassfish install parent directory.
  $glassfish_parent_dir = '/usr/local'

  # Should Glassfish manage user accounts/groups?
  $glassfish_manage_accounts = true
  # Default Glassfish User
  $glassfish_user = 'glassfish'
  # Default Glassfish Group
  $glassfish_group = 'glassfish'

  # Default Glassfish asadmin username
  $glassfish_asadmin_user = 'admin'
  # Default Glassfish asadmin password file
  $glassfish_asadmin_passfile = ''

  # Should a glassfish domain be created on installation?
  $glassfish_create_domain = false
  # Should a glassfish service be created on installation?
  $glassfish_create_service = false
  # Default Glassfish domain, portbase and profile
  $glassfish_domain = 'domain1'
  $glassfish_portbase = '8000'

  # Should the path be updated?
  $glassfish_add_path = true

  # Should this module manage Java installation?
  $glassfish_manage_java = false
  # JDK version: java-7-oracle, java-7-openjdk, java-6-oracle, java-6-openjdk
  $glassfish_java_ver = 'java-7-oracle'

  # Set package names based on Operating System...
  case $::osfamily {
    RedHat : {
      $java6_openjdk_package = 'java-1.6.0-openjdk-devel'
      $java7_openjdk_package = 'java-1.7.0-openjdk-devel'
    }
    Debian : {
      $java6_openjdk_package = 'openjdk-6-jdk'
      $java6_sun_package = 'sun-java6-jdk'
      $java7_openjdk_package = 'openjdk-7-jdk'
    }

  }

}
