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
  # A set of options used to configure the driver.
  # https://elbywan.github.io/cryomongo/Mongo/Options.html
  class_getter mongo_options : Mongo::Options = Mongo::Options.new
  # https://github.com/crystal-i18n/i18n
  class_getter default_locale : Symbol = :en
  # Domain names.
  class_getter domain_name : String = @@debug ? "0.0.0.0" : "www.your-site-name.net"
  # Port for test server.
  class_getter port : Int32 = 3000
  # Static File Options.
  class_getter! static_file_options : Hash(String, Bool)
  # Maximum upload content size for a web form.
  # 1 MB = 1048576 Bytes (in binary).
  # Default: 1048576 * 2 = 2097152 = 2 MB
  class_getter max_upload_size : Int32 = 2097152
  # Security
  # To generate a key (This is not an advertisement): https://randompasswordgen.com/
  # Minimum 64 characters.
  class_getter secret_key : String = "-H%QdH?ga$pLA39P2%86@KjArWp-G6$jA@Zk%nF2+jgZeKq8Wxf-sQL!_mh2wmKQ"
end
