require "kemal"
require "dynfork"
require "./vizbor/*"

module Vizbor
  VERSION = "0.1.0"

  # Initialize locale.
  # https://github.com/crystal-i18n/i18n
  I18n.config.loaders << I18n::Loader::YAML.new("config/locales")
  I18n.config.default_locale = Vizbor::Settings.default_locale
  I18n.init

  # Start Web Server.
  Vizbor::Server.run
end
