# Settings for your web application.
module Vizbor::Settings
  # Maximum 44 characters.
  class_getter app_name : String = "AppName"
  # Match regular expression: /^[a-zA-Z0-9]{16}$/
  # To generate a key (This is not an advertisement): https://randompasswordgen.com/
  class_getter unique_app_key : String = "5yh83a5yn7py97j8"
  # Maximum 60 characters.
  class_getter! database_name : String
  # https://elbywan.github.io/cryomongo/Mongo/Client.html
  class_getter mongo_uri : String = "mongodb://localhost:27017"
  class_getter default_locale : Symbol = :en
end
