# Menu structure for the admin panel.
module Vizbor::Composition
  extend self

  type ServiceComposition = {
    service:     {title: String, icon: String},
    collections: [
      {
        title:     String,
        model_key: String,
        fields:    [{field: String, title: String}],
      },
    ],
  }

  class_getter menu_structure : Array(ServiceComposition) = Array(ServiceComposition).new

  def add(composition : ServiceComposition) : Nil
    @@menu_structure << composition
  end
end
