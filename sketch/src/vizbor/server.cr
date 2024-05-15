# https://github.com/kemalcr/kemal
module Vizbor::Server
  extend self

  def run : Nil
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
