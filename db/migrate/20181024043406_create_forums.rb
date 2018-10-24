class CreateForums < ActiveRecord::Migration[5.2]
  def change
    create_table :forums do |t|
      t.string :title_forum
      t.string :objective_forum

      t.timestamps
    end
  end
end
