class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.integer :sneaker_id
      t.integer :brand_id

      t.timestamps

    end
  end
end
