class AddSneakerModelCountToBrands < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :sneaker_models_count, :integer
  end
end
