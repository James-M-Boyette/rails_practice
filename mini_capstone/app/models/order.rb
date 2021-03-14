class Order < ApplicationRecord
  has_many :carted_products
  has_many :users
  has_many :products, through: :carted_products
end
