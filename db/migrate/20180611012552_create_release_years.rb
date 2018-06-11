class CreateReleaseYears < ActiveRecord::Migration
  def change
    create_table :release_years do |t|
      t.integer :sneaker_id

      t.timestamps

    end
  end
end
