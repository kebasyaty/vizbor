# Menu structure for the admin panel.
module Vizbor::Composition
  extend self

  alias ServiceComposition = NamedTuple(
    service: NamedTuple(title: String, icon: String),
    collections: Array(NamedTuple(
      title: String,
      model_key: String,
      fields: Array({field: String, title: String}),
    )),
  )

  class_getter menu_structure : Array(ServiceComposition) = Array(ServiceComposition).new

  def add(composition : ServiceComposition) : Nil
    @@menu_structure << composition
  end

  def json : String
    result = @@menu_structure.to_json
    result
  end
end
