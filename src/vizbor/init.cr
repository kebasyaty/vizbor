module Vizbor
  extend self

  # ???
  abstract struct Init
    # ???
    def self.your_code
      # Some code ...
    end

    # ???
    def self.run
      subclasses = {{@type.subclasses}}
      subclasses.each do |item|
        item.your_code
      end
    end
  end
end
