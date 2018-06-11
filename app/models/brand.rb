class Brand < ApplicationRecord
  # Direct associations

  has_many   :sneaker_models,
             :foreign_key => "brands_id",
             :dependent => :nullify

  # Indirect associations

  has_many   :designers,
             :through => :sneaker_models,
             :source => :designer

  # Validations

end
