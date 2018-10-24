class ResultRisks < ActiveRecord::Migration[5.2]
  def change
    create_table :result_risks, id: false do |t|
      t.belongs_to :result_survey, index: true
      t.belongs_to :risk, index: true
    end
  end
end
