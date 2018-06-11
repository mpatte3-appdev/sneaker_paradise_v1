class CreateSneakerModels < ActiveRecord::Migration
  def change
    create_table :sneaker_models do |t|
      t.date :initial_release_date
      t.integer :release_year
      t.string :colorway_name
      t.integer :brand
      t.string :lead_designer
      t.string :sneaker_image
      t.string :sneaker_id
      t.integer :designer_id
      t.integer :brands_id

      t.timestamps

    end
  end
end
