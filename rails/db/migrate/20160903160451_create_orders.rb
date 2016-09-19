class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :branch, foreign_key: true
      t.references :customer, foreign_key: true
      t.decimal :cost
      t.string :status

      t.timestamps
    end
  end
end
