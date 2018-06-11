class SneakerModel < ApplicationRecord
  # Direct associations

  belongs_to :initial_release_year,
             :class_name => "ReleaseYear",
             :foreign_key => "release_year",
             :counter_cache => true

  has_one    :designer,
             :foreign_key => "sneaker_id"

  has_many   :colorways,
             :foreign_key => "sneaker_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
