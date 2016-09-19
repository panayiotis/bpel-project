class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :billing_address
      t.string :shipping_address

      t.timestamps
    end
  end
end
