class CreateNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    create_table :neighborhoods do |t|
      t.string :name_neighborhood

      #foranea localidad
      t.references :location, index: true

      t.timestamps
    end
    add_foreign_key :neighborhoods, :locations
  end
end
