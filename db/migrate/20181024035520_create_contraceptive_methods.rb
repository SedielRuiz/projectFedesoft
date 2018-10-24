class CreateContraceptiveMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :contraceptive_methods do |t|
      t.string :name_contraceptive
      t.string :description_contraceptive

      t.timestamps
    end
  end
end
