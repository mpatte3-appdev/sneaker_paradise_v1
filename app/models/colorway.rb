class Colorway < ApplicationRecord
  # Direct associations

  belongs_to :sneaker_line,
             :required => false,
             :class_name => "SneakerModel",
             :foreign_key => "sneaker_id",
             :counter_cache => true

  # Indirect associations

  # Validations

end
