class CreateResultSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :result_surveys do |t|
      t.bit :answer

      #foranea encuestas
      t.references :poll, index: true
      #foranea usuario
      t.references :question, index: true
      #foranea aplicación
      t.references :apply_survey, index: true
      t.timestamps
    end
    add_foreign_key :result_surveys, :polls
    add_foreign_key :result_surveys, :questions
    add_foreign_key :result_surveys, :apply_surveys
  end
end
