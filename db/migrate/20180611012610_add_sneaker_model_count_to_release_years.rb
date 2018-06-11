class AddSneakerModelCountToReleaseYears < ActiveRecord::Migration[5.0]
  def change
    add_column :release_years, :sneaker_models_count, :integer
  end
end
