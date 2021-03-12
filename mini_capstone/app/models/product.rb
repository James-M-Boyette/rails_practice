class Product < ApplicationRecord
  # belongs_to :supplier
  has_man :category_products
end
