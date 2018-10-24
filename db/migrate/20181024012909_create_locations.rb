class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name_location
      t.string :zone_location

      t.timestamps
    end
  end
end
