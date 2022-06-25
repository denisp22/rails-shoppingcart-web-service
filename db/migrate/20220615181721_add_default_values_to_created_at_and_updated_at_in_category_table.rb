class AddDefaultValuesToCreatedAtAndUpdatedAtInCategoryTable < ActiveRecord::Migration[6.1]
  def change
    change_column_default :categories, :created_at, from: nil, to: -> { 'now()' }
    change_column_default :categories, :updated_at, from: nil, to: -> { 'now()' }
  end
end
