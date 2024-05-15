# https://github.com/kemalcr/kemal
module Vizbor::Server
  extend self

  # Run Web Server.
  def run : Nil
    # Initialize locale.
    init_locale
    # Web Server Configuration and start.
    # NOTE: https://github.com/kemalcr/kemal
    # NOTE: https://kemalcr.com/guide/
    #
    public_folder "assets/static"
    if Vizbor::Settings.disable_static_files?
      serve_static false
    elsif !Vizbor::Settings.static_file_options?.nil?
      serve_static(Vizbor::Settings.static_file_options)
    end
    logging(false) unless Vizbor::Settings.use_logging?
    Kemal.run do |config|
      server = config.server.not_nil!
      server.bind_tcp(
        Vizbor::Settings.domain_name,
        Vizbor::Settings.port,
        reuse_port: Vizbor::Settings.server_reuse_port?,
      )
    end
  end

  # Initialize locale.
  # NOTE: https://github.com/crystal-i18n/i18n
  def init_locale : Nil
    I18n.config.loaders << I18n::Loader::YAML.new("config/locales")
    I18n.config.default_locale = Vizbor::Settings.default_locale
    I18n.init
  end
end
