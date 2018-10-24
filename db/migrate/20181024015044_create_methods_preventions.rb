class CreateMethodsPreventions < ActiveRecord::Migration[5.2]
  def change
    create_table :methods_preventions do |t|
      t.string :name_method
      t.string :description_method
      t.integer :duration_method
      t.string :type_duration
      t.string :recommendations_method

      t.timestamps
    end
  end
end
