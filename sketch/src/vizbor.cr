require "kemal"
require "dynfork"
require "./vizbor/*"

module Vizbor
  VERSION = "0.1.0"

  # Start Web Server.
  Vizbor::Server.run
end
