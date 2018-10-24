class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.integer :phone
      t.string :address
      t.string :email
      t.string :user_name
      t.string :password_digest

      #foranea barrio
      t.integer :neighborhood_id
      t.references :neighborhood_id, index: true

      t.timestamps
    end
    add_foreign_key :users, :neighborhoods
  end
end
