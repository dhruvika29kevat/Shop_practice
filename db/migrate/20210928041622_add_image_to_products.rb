class AddImageToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :image, :JSON
  end
end
