class CreateFinancialEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :financial_events do |t|
      t.references :branch, foreign_key: true
      t.references :customer, foreign_key: true
      t.string :type
      t.decimal :amount

      t.timestamps
    end
  end
end
