class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.text :delivery_address
      t.string :client_name
      t.time :pickup_time
      t.string :phone
      t.string :email
      t.string :products, array: true, default: []
      t.timestamps
    end
  end
end
