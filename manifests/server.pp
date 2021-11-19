# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include adrien_flask::server
class adrien_flask::server {

  package { 'gunicorn':
    ensure => present,
  }

  notice("Gunicorn installé")
  
  exec { "locate_entrypoint":
    cwd => "/etc/puppetlabs/code/modules/adrien_flask/manifests/",
    path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
    environment => ["FLASK_APP=entrypoint.py", "FLASK_ENV=development"],
    command => "flask run -h localhost -p 5169",
  }

  notice("Flask is finally runnning")

}
