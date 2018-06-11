class Designer < ApplicationRecord
  # Direct associations

  belongs_to :sneaker,
             :class_name => "SneakerModel"

  # Indirect associations

  # Validations

end
