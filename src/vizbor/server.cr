# https://github.com/kemalcr/kemal
module Vizbor::Server
  extend self

  # Run Web Server.
  def run : Nil
    # Initialize locale.
    init_locale

    # Run migration.
    run_migration

    # Execute all pre-code in services.
    Vizbor::Init.run

    # Web Server Configuration and start.
    # NOTE: https://github.com/kemalcr/kemal
    # NOTE: https://kemalcr.com/guide/
    #
    if Vizbor::Settings.debug?
      Kemal.config.env = "development"
    else
      Kemal.config.env = "production"
    end
    #
    public_folder "public"
    #
    if Vizbor::Settings::Kemal.disable_static_files?
      serve_static false
    elsif !Vizbor::Settings::Kemal.static_file_options?.nil?
      serve_static(Vizbor::Settings::Kemal.static_file_options)
    end
    #
    logging(false) unless Vizbor::Settings::Kemal.use_logging?
    #
    Kemal.run do |config|
      server = config.server.not_nil!
      server.bind_tcp(
        Vizbor::Settings.host.split(":").first,
        Vizbor::Settings.port,
        reuse_port: Vizbor::Settings::Kemal.server_reuse_port?,
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

  # Run migration.
  def run_migration : Nil
    DynFork::Migration::Monitor.new(
      database_name: Vizbor::Settings.database_name,
    ).migrat
  end
end
