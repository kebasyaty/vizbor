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
      # WARNING: Get icon name (for service) - https://materialdesignicons.com/
      # Empty example:
      {
        service:     {title: "???", icon: "help"},
        collections: [
          {
            title:     "???",
            model_key: "???", # Vizbor::Services::<ServiceName>::Models::<ModelName>.full_model_name,
            fields:    [
              {field: "???", title: "???"},
            ],
          },
        ],
      }
    end

    # Get composition of service list
    def self.get : Array(Service)
      ap_menu : Array(Service) = Array(Service).new
      subclasses = {{@type.subclasses}}
      subclasses.each do |service|
        ap_menu << service.composition
      end
      ap_menu
    end
  end
end
