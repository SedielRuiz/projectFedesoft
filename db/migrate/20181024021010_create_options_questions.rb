class CreateOptionsQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :options_questions do |t|
      t.string :description_opction
      t.bit :answer

      #foranea pregunta
      t.references :question, index: true
      
      t.timestamps
    end
    add_foreign_key :options_questions, :questions
  end
end
