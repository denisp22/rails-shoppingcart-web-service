class AddStockFieldToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :stock, :integer
  end
end