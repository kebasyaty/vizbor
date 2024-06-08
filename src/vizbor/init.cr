module Vizbor
  # Code that must be executed before the web server starts.
  abstract struct Init
    # Add a preliminary code of service.
    def self.your_code
      # Some code ...
    end

    # Execute all pre-code in services.
    def self.run
      subclasses = {{@type.subclasses}}
      subclasses.each do |item|
        item.your_code
      end
    end
  end
end
