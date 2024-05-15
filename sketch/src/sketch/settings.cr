# Settings for your web application.
module Sketch::Settings
  class_getter app_name : String = ""
  class_getter unique_app_key : String = ""
  class_getter! database_name : String
  # https://elbywan.github.io/cryomongo/Mongo/Client.html
  class_getter mongo_uri : String = "mongodb://localhost:27017"
end
