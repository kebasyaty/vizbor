# Menu structure for the admin panel.
module Vizbor
  extend self

  alias MenuCompositionType = NamedTuple(
    service: NamedTuple(title: String, icon: String),
    collections: Array(NamedTuple(
      title: String,
      model_key: String,
      fields: Array({field: String, title: String}),
    )),
  )

  abstract struct MenuComposition
    # Add service composition
    def self.composition : Vizbor::MenuCompositionType?
      # WARNING: Get icon name (for service) - https://materialdesignicons.com/
      # Empty example:
      # {
      #   service:     {title: "???", icon: "help"},
      #   collections: [
      #     {
      #       title:     "???",
      #       model_key: "???", # Vizbor::Services::<ServiceName>::Models::<ModelName>.full_model_name,
      #       fields:    [
      #         {field: "???", title: "???"},
      #       ],
      #     },
      #   ],
      # }
    end

    # Get composition of service list
    def self.get : Array(Vizbor::MenuCompositionType)
      service_list = Array(Vizbor::MenuCompositionType).new
      subclasses = {{@type.subclasses}}
      subclasses.each do |service|
        if composition = service.composition
          service_list << composition.not_nil!
        end
      end
      service_list
    end
  end
end
