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
    # Add service composition
    def self.composition : Vizbor::Composition::Service
      # Your service composition ...
    end

    # Get composition of service list
    def self.get : Array(Service)
      menu : Array(Service) = Array(Service).new
      subclasses = {{@type.subclasses}}
      subclasses.each do |service|
        menu << service.composition
      end
      menu
    end
  end
end
