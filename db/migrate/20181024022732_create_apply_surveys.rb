class CreateApplySurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :apply_surveys do |t|
      t.integer :number_attemps

      #foranea usuario
      t.references :user, index: true
      #foranea encuestas
      t.references :poll, index: true

      t.timestamps
    end
    add_foreign_key :apply_surveys, :users
    add_foreign_key :apply_surveys, :polls
  end
end
