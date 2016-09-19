class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :product_category, foreign_key: true
      t.decimal :price
      t.string :description
      t.integer :preparation_time

      t.timestamps
    end
  end
end
