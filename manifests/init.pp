# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include adrien_flask
class adrien_flask {
  
  notice("Vérification installation")

  include adrien_flask::database
  include adrien_flask::flask 
  include adrien_flask::server

  notice("Bravo, installation terminée")

}
