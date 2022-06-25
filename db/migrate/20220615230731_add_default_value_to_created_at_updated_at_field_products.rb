class AddDefaultValueToCreatedAtUpdatedAtFieldProducts < ActiveRecord::Migration[6.1]
  def change
    change_column_default :products, :created_at, from: nil, to: -> { 'now()' }
    change_column_default :products, :updated_at, from: nil, to: -> { 'now()' }
  end
end
