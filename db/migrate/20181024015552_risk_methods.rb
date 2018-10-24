class RiskMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :risk_methods, id: false do |t|
      t.belongs_to :risk, index: true
      t.belongs_to :method_prevention, index: true
    end
  end
end
