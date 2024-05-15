# https://github.com/kemalcr/kemal
module Vizbor::Server
  extend self

  def run : Nil
    # Initialize locale.
    # https://github.com/crystal-i18n/i18n
    I18n.config.loaders << I18n::Loader::YAML.new("config/locales")
    I18n.config.default_locale = Vizbor::Settings.default_locale
    I18n.init

    # Web Server Configuration.
    # https://github.com/kemalcr/kemal
    # https://kemalcr.com/guide/
    #
    public_folder "assets/static"
    unless Vizbor::Settings.static_file_options.nil?
      serve_static(Vizbor::Settings.static_file_options)
    end
    #
    Kemal.run do |config|
      server = config.server.not_nil!
      server.bind_tcp(
        Vizbor::Settings.domain_name,
        Vizbor::Settings.port,
        reuse_port: true,
      )
    end
  end
end
