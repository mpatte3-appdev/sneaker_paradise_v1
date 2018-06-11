class CreateColorways < ActiveRecord::Migration
  def change
    create_table :colorways do |t|
      t.integer :sneaker_id
      t.string :colorway_name

      t.timestamps

    end
  end
end
