# == Schema Information
#
# Table name: orders
#
#  id               :bigint           not null, primary key
#  client_name      :string
#  delivery_address :text
#  email            :string
#  phone            :string
#  pickup_time      :time
#  products         :string           default([]), is an Array
#  shipping_cost    :float
#  sub_total        :float
#  taxes            :float
#  total            :float
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
