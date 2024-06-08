# Menu structure for the admin panel.
module Vizbor::Composition
  extend self

  alias Service = NamedTuple(
    service: NamedTuple(title: String, icon: String),
    collections: Array(NamedTuple(
      title: String,
      model_key: String,
      fields: Array({field: String, title: String}),
    )),
  )

  abstract struct AdminPanelMenu
    @@menu : Array(Service) = Array(Service).new

    # Add service composition
    def self.composition : Vizbor::Composition::Service
      # Your service composition ...
    end

    def self.subclasses
      {{@type.subclasses}}
    end

    def json : String
      # ...
    end
  end
end
