# A set of custom exceptions for Vizbor.
module Vizbor::Errors
  # Root custom exception.
  class VizborException < Exception; end

  # A type of global exception that should not be raised in production.
  class Panic < Vizbor::Errors::VizborException
    def initialize(message : String)
      super
    end
  end
end
