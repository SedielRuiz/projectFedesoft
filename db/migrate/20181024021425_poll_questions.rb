class PollQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :poll_questions, id: false do |t|
      t.belongs_to :poll, index: true
      t.belongs_to :question, index: true
    end
  end
end
