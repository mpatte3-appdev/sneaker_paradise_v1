class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :designer_name
      t.integer :sneaker_id
      t.integer :designer_id

      t.timestamps

    end
  end
end
