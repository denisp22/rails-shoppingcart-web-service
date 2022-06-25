class AddTotalSubtotalFieldsToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :sub_total, :float
    add_column :orders, :taxes, :float
    add_column :orders, :shipping_cost, :float
    add_column :orders, :total, :float
  end
end
