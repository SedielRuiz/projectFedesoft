class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :concept_quiestion
      t.integer :value_question

      t.timestamps
    end
  end
end
