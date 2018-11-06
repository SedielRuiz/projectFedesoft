class QueryPoll < ActiveRecord::Migration[5.2]
  def change
    remove_column :result_surveys :poll_id, :integer
    t.references :apply_survey, index: true
    add_foreign_key :result_surveys, :apply_surveys

    add_column :options_questions, :value_option, :integer
  end
end
