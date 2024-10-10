# Menu structure for the admin panel.
module Vizbor
  extend self

  alias MenuCompositionResult = NamedTuple(
    service: NamedTuple(title: String, icon: String),
    collections: Array(NamedTuple(
      title: String,
      model_key: String,
      fields: Array({field: String, title: String}),
    )),
  )

  abstract struct MenuComposition
    # Add service composition
    def self.composition : Vizbor::MenuCompositionResult?
      # WARNING: Get icon name (for service) - https://materialdesignicons.com/
      # Empty example:
      # {
      #   service:     {title: "???", icon: "help"},
      #   collections: [
      #     {
      #       title:     "???",
      #       model_key: "???", # Vizbor::Services::<ServiceName>::Models::<ModelName>.full_model_name,
      #       fields:    [
      #         # WARNING: The first field is necessarily textual related to the name of the document.
      #         {field: "???", title: "???"},
      #       ],
      #     },
      #   ],
      # }
    end

    # Get composition of service list
    def self.get : Array(Vizbor::MenuCompositionResult)
      service_list = Array(Vizbor::MenuCompositionResult).new
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
