class AddColorwayCountToSneakerModels < ActiveRecord::Migration[5.0]
  def change
    add_column :sneaker_models, :colorways_count, :integer
  end
end
