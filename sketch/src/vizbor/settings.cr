# Settings for your web application.
module Vizbor::Settings
  class_getter? debug : Bool = true
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
  class_getter local_domain : String = "127.0.0.1"
  class_getter site_domain : String = "www.site-name.net"
  class_getter port : UInt32 = 3000
  # Maximum upload content size for a web form.
  # 1 MB = 1048576 Bytes (in binary).
  # Default: 1048576 * 2 = 2097152 = 2 MB
  class_getter max_upload_size : UInt32 = 2097152
end
