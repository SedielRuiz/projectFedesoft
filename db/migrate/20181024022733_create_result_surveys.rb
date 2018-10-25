class CreateResultSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :result_surveys do |t|
      t.bit :answer

      #foranea encuestas
      t.integer :poll_id
      t.references :poll_id, index: true
      #foranea usuario
      t.references :question, index: true

      t.timestamps
    end
    add_foreign_key :result_surveys, :polls
    add_foreign_key :result_surveys, :questions
  end
end
