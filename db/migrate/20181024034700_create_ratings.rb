class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :qualify
      t.string :observation_rating

      #foranea usuario
      t.integer :user_id
      t.references :user_id, index: true
      
      t.timestamps
    end
    add_foreign_key :ratings, :users
  end
end
