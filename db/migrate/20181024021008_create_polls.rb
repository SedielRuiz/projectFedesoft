class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :name_poll
      t.integer :type_poll

      t.timestamps
    end
  end
end
