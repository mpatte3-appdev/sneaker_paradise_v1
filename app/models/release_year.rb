class ReleaseYear < ApplicationRecord
  # Direct associations

  has_many   :sneaker_models,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
