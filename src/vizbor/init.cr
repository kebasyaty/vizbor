module Vizbor
  # Code that must be executed before the web server starts.
  abstract struct Init
    # Add a preliminary code of service.
    def self.some_code : Nil
      # ...
    end

    # Execute all pre-code in services.
    def self.run : Nil
      subclasses = {{@type.subclasses}}
      subclasses.each do |item|
        item.some_code
      end
    end
  end
end
