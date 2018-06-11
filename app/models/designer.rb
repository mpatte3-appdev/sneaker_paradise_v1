class Designer < ApplicationRecord
  # Direct associations

  belongs_to :sneaker,
             :class_name => "SneakerModel"

  # Indirect associations

  has_one    :brand_name,
             :through => :sneaker,
             :source => :brand_name

  # Validations

end
