# Settings for your web application.
module Sketch::Settings
  class_getter app_name : String = ""
  class_getter unique_app_key : String = ""
  class_getter database_name : String? = nil
  class_getter mongo_uri : String = ""
end
