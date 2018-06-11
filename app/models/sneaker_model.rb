class SneakerModel < ApplicationRecord
  # Direct associations

  has_many   :colorways,
             :foreign_key => "sneaker_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
