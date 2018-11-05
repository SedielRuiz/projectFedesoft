class RenamepollquestionsPollsquestions < ActiveRecord::Migration[5.2]
  def change
    rename_table :poll_questions, :polls_questions
  end
end
