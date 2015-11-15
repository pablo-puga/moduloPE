# Class: ejercicio3
# ===========================

class ejercicio3 {
  #Index para centos.dev
  file { '/var/www/index.php':
    ensure  => file,
    owner   => "apache",
    group   => "apache",
    replace => true,
    content => "<?php echo'<h1>Hola desde virtualhost centos.dev</h1>'?>\n",
    require => [Package['httpd'],Package['php']],
  }

  #Index para project1.dev
  file { '/var/www/project1/index.php':
    ensure  => file,
    owner   => "apache",
    group   => "apache",
    replace => true,
    source  => "puppet:///modules/ejercicio3/index-project1.php",
    require => [Package['httpd'],Package['php']],
  }
}
