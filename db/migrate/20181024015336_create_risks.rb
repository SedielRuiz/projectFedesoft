class CreateRisks < ActiveRecord::Migration[5.2]
  def change
    create_table :risks do |t|
      t.string :name_risk
      t.string :description_risk
      t.string :recomendations_risks

      t.timestamps
    end
  end
end
