class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.text :description
      t.decimal :price, precision: 5, scale: 2, defailt: 0
      t.string :condition

      t.timestamps
    end
  end
end
