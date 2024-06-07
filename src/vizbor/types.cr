module Vizbor::Types
  type ServiceСomposition = {
    service:     {title: String, icon: String},
    collections: [
      {
        title:     String,
        model_key: String,
        fields:    [{field: String, title: String}],
      },
    ],
  }

  type ServiceListСomposition = [ServiceСomposition]
end
