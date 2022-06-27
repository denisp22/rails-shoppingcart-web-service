# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  brand       :string
#  description :string
#  img         :string
#  name        :string
#  price       :float
#  stock       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#  index_products_on_name         (name) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
class Product < ApplicationRecord
  validates_uniqueness_of :name
  belongs_to :category
end
